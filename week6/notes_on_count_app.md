# Count App

## Gems

Using:

* Sinatra
* Sinatra-contrib
* RSpec
* rack-test

Sinatra::Contrib is a series of extensions to Sinatra that provide extra functionality to Sinatra.

Rack::Test is a small testing API for Rack apps.

## Description

This app is an example of a Javascript front end that sends requests to a sinatra API.

## app/app.rb

A ruby file that requires three sinatra dependencies:

* Sinatra::Base
* Sinatra::Namespace - this adds namespaces to an application. This allows us to share a path prefix for the routes within  the namespace, and define filters, conditions and error handlers exclusively for them.
* Sinatra::Json - this adds a helper for JSON generation (JavaScript Object Notation). JSON is a lightweight format for storing and transporting data, often used when data is sent from a server to a web page.

It also requires two controller files - app_controller and counter_controller.

## config.ru

This is our Rackup file, it requires app.rb and runs our CounterApp.

## app/controllers/app_controller.rb

CounterApp inherits from Sinatra::Base.

It also registers Sinatra::Namespace, and sets itself as the root file for the project. It then enables sessions.

There is one route in this file - '/'. When the controller receives an HTTP get request to that route, it renders index.erb.

## app/views/index.erb

This is the embedded ruby file that contains the HTML for the counter web page. There is an increment button, and a div with an id "count".

The page refers to three js scripts:

* app/public/js/index.js
* app/public/js/counter/client.js
* app/public/js/counter/counter.js

## app/public/js/index.js

This file adds an event listener, which fires when the whole page has loaded.

It sets three variables:

* incrementButton
* countDiv
* counter

The first two make use od document.getElementById, which returns html elements from the page (increment and count, which are the increment button and the count display, respectively).

counter is a new Counter object. Counter is defined in counter.js.

Finally, the document passes the render() method to counter.

## app/public/js/counter/counter.js

This document creates a Counter class.

The constructor method takes three arguments, and assigns them to (private?) properties of the same names:

* _element
* _button
* _client

It further sets the following properties:

* this.state contains a factory function as follows { count: 0 }, so that count is available through dot notation (this.state.count)
* this.getCount
* this.setStateAndRender

I believe the last two are used to set the context of 'this' using the bind method. Presumably this is then bound to the object created by the constructor function.

The constructor adds an event listener to this._button. On receiving a click, the following actions are triggered:

* The default action of the button is prevented from functioning
* this.state.count is incremented by 1
* setCount() is called, passing in this.state.count (an integer) as an argument

A final method is called:

* this.getCount()

There are five methods that belong to Counter.

1. getCount()

_Note - I don't understand this method yet_

2. setCount(number)

This method sets a variable params, with a property count that is equal to the number passed in as an argument.

_Note - I don't understand the next part of this function yet_

3. setStateAndRender(data)

This method takes in a set of data as an argument. It passes the data to this.setState (this being bound to the instance of the Counter class) and then invokes this.render().

4. setState(obj)

This method takes in obj (the data passed in to setStateAndRender()). It iterates over the properties of the object using the Object.keys method and, I think, sets the value of this.state's properties to the properties of the object.

5. render()

This changes the content of the element - in this case, the element that has been passed into the constructor method.

## app/public/js/counter/client.js

This file creates a constant called Client. I think lines 2-20 are a constructor function.

This function defines two methods, .get.and .post.

.get takes a url and a callback as arguments. It returns a 'fetch' method which takes the url, and which in turn generates a response which reads and parses the data using JSON and which then passes the data into the callback function previously passed as an argument to the method.

.post takes three arguments; a url, a set of data and a callback function. It creates a variable, opts, which has three attributes - a method, a body and headers. Method is set to POST; body is created by calling the JSON.stringify method on the data passed into the argument. This function converts a javascript object into a JSON string.

.post's return value is a fetch call to the url passed in as an argument, taking in an "init" options (see link [here](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)) an an optional second argument. It then calls the callback function previously passed in to the method as an argument.

Client returns an object with .get and .post properties.

## app/controllers/counter_controller.rb

This controller sets a namespace ('/api') and defines two routes for that namespace:

* get '/count'
* post '/count'

get count retrieves the current count from the session hash; if it does not exist, it sets count to 0.

(_what does json count: count do?_)

post count sets session[:count] to be the current count, which it knows as that data has been passed in as params in setCount.

## Following the flow

* A user navigates to '/'; index.erb is rendered in their browser. 

* Once the page has loaded, the script in index.js runs.

* This script creates a new Counter object (counter), which takes in the following as arguments:
  * The HTML element represented by the countDiv id;
  * The HTML button represented by the increment id; and
  * The Client constant.
* getCount is called, which retrieves the count value. If there is nothing in the sessions hash, then count is set to 0.

* The script on index.js finally calls the render method on the counter object, which copies the value contained in this.state.count to the HTML element and which is therefore displayed on the page. THe starting value is 0.

* When counter is created, an event listener is created that waits for the user to click on the increment button.

* When the user clicks on the increment button, that event listener is activated and carries out three actions:
  * It prevents the default action for the button occurring;
  * It increments this.state.count by 1; and
  * It calls this.setCount.

* this.setCount in turn calls .post on the Client constant. 'api/count' is passed in as the url; params (_I'm not sure what this is - is it a hash or a javascript object? I think a javascript object as the data is parsed using JSON_) is passed in as the data, and this.getCount is passed in as the callback function.

* .post then fetches 'api/count' with an HTTP POST request, passing in params as a JSON string, and then calls the getCount function. This has the effect of updating the count and getting the new count (see next).

* As getCount is called by setCount, the last act is for .get to be called on Client, which fetches the current count from '/api/count' and passes the data to setStateAndRender (_not sure what obj is here, or what setState is doing_), which renders the page.

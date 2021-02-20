# Week 3, Day 5
## Subtitle

### Links

* [Week outlines](https://github.com/makersacademy/course/blob/master/week_outlines.md)
* [Knowledge Pills](https://github.com/makersacademy/course/blob/master/pills.md)
* [The Escalation Process](https://github.com/makersacademy/course/blob/29a5e4a3c1776d32eda8f3ee55edc1dd124b05ba/pills/escalation_process.md)
* [Feedback form](https://docs.google.com/forms/d/1dr6yUt7M2HJyDEnMoqjuNpew3mUgFQUp79WQbT7wv68/edit)
* [Timetable](https://airtable.com/shr9ia7PTZfhGxXQa/tblU9M74TCpg89oGC)

### Goals for the week/day

[Airtable: TDD & OOD](https://airtable.com/shrr9VqhGBzPyfa7E/tblokmw6yNUO75ge6)

[Reflective Learning](https://github.com/makersacademy/course/blob/master/goals/reflective_learning.md)

[Progress](https://github.com/makersacademy/course/blob/master/goals/progress_insight.md)

[SMART Goals](https://docs.google.com/document/d/1Tcw_8OuOSXArP8Wr7X1jywWDV8NW_LzYmFawUCBYIZ8/edit)

By the end of week 3, all developers should be able to:

* Build a simple web app
* Follow an effective debugging process for web applications
* Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS)
* Explain the MVC pattern

---

### Notes

#### Sinatra Pills

[Pill 1](https://github.com/makersacademy/course/blob/master/pills/sinatra_1.md)

Sinatra is a simple web application framework for Ruby. It allows you to integrate ruby applications with a web interface, so anyone with a browser can use them. It is therefore like Ruby on Rails, but much simpler - it doesn't do much beyond making your code accessible to requests that come over the HTTP protocol.

Sinatra is a ruby gem - the best way to install it is to include it in a gemfile and run bundle. This means that any other devs looking at the project know what gems are being used.

[Pill 2](https://github.com/makersacademy/course/blob/master/pills/sinatra_2.md)

You need to require sinatra in your ruby app file for it to work; this will then include all of sinatra's server functions.

When we run the ruby app file, sinatra starts a local sever on a specific port number. See here for the [localhost pill](https://github.com/makersacademy/course/blob/master/pills/localhost_web_addresses.md).

_localhost:4567 is the address we can enter into our browser to access our web app. localhost is the computer's name for itself and 4567 is the port number._

_A port is a logical construct that identifies a specific process or a type of network service. It is identified by a number (technically a 16-bit unsigned number), and is associated with an IP address and the type of transport protocol used for communication._

_By convention, certain ports are used for certain tasks - 80 is reserved for HTTP connections and so is added by default by your browser when you navigate to a website._

```ruby
get '/' do
  'hello!'
end
```

The above code is our web app. This tells sinatra that when it receives an HTTP get request to the / (root) path, then it should display 'hello!'.

[Pill 3](https://github.com/makersacademy/course/blob/master/pills/sinatra_3.md)

Sinatra needs to be reloaded for any changes to the app to take place. We can get around this by using a gem called shotgun.

Shotgun can be run as follows:

```
$ shotgun hello.rb -p 4567
```

Here, we are specifying the port number that shotgun uses - we have specified 4567 to keep it consistent with sinatra. Otherwise, shotgun uses a default of 9393.

Now, we can make changes to our app and when we refresh the browser, it will display those changes.

__HTML__

[Pill 4](https://github.com/makersacademy/course/blob/master/pills/sinatra_4.md)

Sinatra converts what is in our ruby file to HTML so that it can be displayed by the browser. With that in mind, we can actually put some html in our ruby file so that we can jazz up the webpage.

__CSS__

CSS stands for cascading style sheets - HTML provides the basic content of a webpage. CSS adds styling, for example the code below adds a border around the picture:

```ruby
get '/' do
  "<div style='border: 3px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
end
```

__Separation of Concerns__

[Pill 5](https://github.com/makersacademy/course/blob/master/pills/sinatra_5.md)

Web applications can be very large, so we need a way to organise them. As a start, Ruby and HTML should be separated out. By default, HTML should be in a separate "views" folder.

erb is a Ruby templating system. With the code below, we are asking it to render a file called index.erb from the folder views (this is the default convention - you can specify the name of a different folder but if you don't, the default will be views).

```ruby
get '/' do
  erb :index
end
```

ERB stands for embedded ruby. The templates can combine plain text, such as HTML code, with executable Ruby code. In the example below, the <% %> tags are erb tags, __not__ HTML. We use <%= %> when we want to output what is inside the tags to the screen.

Everything inside these tags is executed as Ruby. erb(index) - or erb :index reads the input file (index.erb), processes any ruby that is inside, and returns HTML which is then returned by the block passed to the get() method.

__Parameters__

[Pill 6](https://github.com/makersacademy/course/blob/master/pills/sinatra_6.md)

We can make our web page interactive through the use of parameters.

The params hash is provided by sinatra, and is a collection of all of the parameters from the HTTP request. One way to pass params to the HTTP request is to use the query string portion of the URL.

__Forms__

[Pill 7](https://github.com/makersacademy/course/blob/master/pills/sinatra_7.md)

Forms allow us to get user input and modify the contents of the webpage accordingly. We specify the action a form carries out when submitted - i.e. the path to a webpage. The data that is sent is determined by the fields that are present inside the form. The form data is submitted as parameters.

__Static Files__

[Pill 8](https://github.com/makersacademy/course/blob/master/pills/sinatra_8.md)

A static asset is a file that is part of our project, hosted locally (unlike the image of the cat we've had so far, which is being obtained from an external web address).

Images are usually held in a public/images/ folder and can be accessed by referencing the localhost address:

```html
<img src='http://localhost:4567/images/cat.png'>
```

The address does not include the public folder - sinatra treats everything inside the public folder as accessible by URLs. That is why we are able to access a file from the browser simply by putting it in the folder. This __only__ works for documents in the public folder.

_Absolute vs relative URLS_

There is a problem with using absolute URL paths:

```html
<img src='http://localhost:4567/images/cat.png'>
```

This tag would only work if there is a web-server running locally on port 4567. It cannot be accessed from other computers as the other computer would look for local files, not files on your computer.

Instead we can use a relative path:

```html
<img src='/images/cat.png'>
```

This tells the browser to use the address of the current website to fetch the page.

This applies to all URLs - remember, we used

```html
<form action='/hello'>
```

However, this works only when we want the path to be relative to the current _domain_.

Often, we want the path to be relative to the _current path_. For example, if the image was in a sub-folder somewhere, such as:

```
http://www.example.com/users/12345/galleries/4/kittens/index.html
```

A solution is to mark the relative path as follows:

```html
<img src='cat.png'>
```

Importantly, there is no slash at the beginning of the URL. This means that the path is relative to the current URL.

#### HTTP Servers

[Link](https://github.com/makersacademy/skills-workshops/blob/master/practicals/servers_and_clients/http_servers.md)

---

### Reflection

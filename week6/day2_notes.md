# Week 6, Day 2
## Javascript

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

By the end of the week, the goal is to be able to answer "yes" to the week's primary question:

__Can you learn a new language and its patterns?__

By the end of the week all developers can:

* Test drive a simple front-end web app with Javascript
* Follow an effective process for learning a new language

#### Check your understanding

To guide your learning, aim to be able to answer "yes" to the questions below.

Return to these questions each day to check your understanding.

##### JavaScript

* Can you read and write JavaScript syntax?

* Can you understand the rules that govern the behaviour of the this keyword?

* Can you follow the flow of an Ajax request and response?

* Can you follow the flow of control through code that uses callbacks?

##### Transferring your existing skills

* Can you encapsulate behaviour in JavaScript?

* Can you get visibility effectively in JavaScript?

* Can you TDD in JavaScript?

* Can you follow the flow of control over the whole web app cycle? e.g. the interface of a thermostat is displayed in HTML/CSS, the "increase temperature" button is clicked, a JavaScript click event fires, JavaScript code runs to handle the event, an Ajax request is made, a Sinatra controller POST action handler is run, a Thermostat Ruby model is updated, the new temperature is saved to a Postgres database, the new temperature is returned as JSON by the Ruby controller, JavaScript code runs to update the temperature in the web page.

---

### Notes

#### Javascript Classes

[js_classes pill](https://github.com/makersacademy/course/blob/master/pills/js_classes.md)

Javascript has classes - they are similar to structs in C and to a degree, classes in Ruby. A class is defined and instantiated in JavaScript as follows:

```javascript
class Dog {

}

var dog = new Dog();
```

What js is doing at a lower level is creating a type of function called Dog.

##### Initialisation

In ruby, we have the initialisation method, which is called whenever a new instance of the class is created.

Javascript has the constructor method instead.

```javascript
class Dog {
  constructor(breed) {
    this.breed = breed;
  }
}

var barney = new Dog('Pug');
```

"this" is the newly created object. If you do not have a constructor method the js will automatically create one when you initialise an instance of the class.

There is no equivalent in js to attr_reader or attr_accessor, so instance variables are available outside of methods by default:

```javascript
var barney = new Dog('Pug');
barney.breed

> 'Pug'
```

##### Defining methods

In Ruby, a method is defined as follows:

```ruby
class Dog
  def bark(name)
    "#{name} says Woof!"
  end
end
```

In javascript, the equivalent would be:

```javascript
class Dog {
  bark(name) {
    console.log(name + ' says Woof!');
  }
}
```

The bark method is stored in Dog.prototype, which can be accessed by running:

```javascript
var shandy = new Dog('Golden Retriever');
console.log(shandy);
```

All javascript objects inherit properties from a prototype - see [here](https://www.w3schools.com/js/js_object_prototypes.asp). In fact, that is all an instance of an object in javascript is - it is a collection of properties (conceptually different to Ruby, there a property belongs to an object).  In our case, the Dog object is a collection of properties, some of which are inherited from Dog, but others are inherited from further up the inheritance tree (i.e. from Object).

#### Javascript Functions

[js_functions pill](https://github.com/makersacademy/course/blob/master/pills/js_functions.md)

JavaScript is fundamentally different to Ruby, and sometimes it is not helpful to compare concepts. Function appears to work in a similar way to certain concepts in Ruby, but it is different.

__Function creates an object that can be invoked.__

In Ruby, we invoke methods, not objects - methods belong to objects. Try thinking of this differently - imagine that a ruby method was simply an instance of a Method class - then you would be invoking an object.

In Ruby, literals can be used to create a new object:

```ruby
"Ben" # creates a new string object
[] # creates an empty array
{} # creates an empty hash
```

In javascript, the function keyword creates a new Function object (i.e. an object that can be invoked).

```javascript
var bark = function() {
  return 'Woof';
}

bark(); // here we are invoking the function - it will return 'Woof'
```

Note the _let_ keyword [link](https://www.w3schools.com/js/js_let.asp) - this allows for block scoping, where a variable is only accessible inside a block (i.e. inside a method or object).

You __must__ include parentheses when invoking a method - otherwise javascript thinks it's a variable.

You can also declare arguments in functions:

```javascript
var bark = function(name) {
  return name + ' says Woof';
}

bark('Barney'); // will return 'Barney says Woof'

let miaow = (name) => {
  return '${name} says Miaow';
}

miaow('Ed'); // will return 'Ed says Miaow'
```

In Ruby, we can pass a block to another method:

```ruby
['one', 'two', 'three'].each do |number|
  puts number
end
```

We can do something similar in javascript with an anonymous function.  This is a function without a name:

```javascript
['one', 'two', 'three'].forEach(function(number) {
  console.log(number);
});

// In ES6, this can be worded as follows:
['one', 'two', 'three'].forEach(number => console.log(number))
```

We are passing a function object to the forEach function. The following is the same:

```javascript
var callback = function(arg) {
  console.log(arg);
}

['one', 'two', 'three'].forEach(callback);

// In ES6, the callback function can be initialised as follows:

let callback = (arg) => console.log(arg);
```

##### Summary

A function is an object that can be invoked. There are different ways of invoking a function.

#### Javascript Conventions

[js_conventions pill](https://github.com/makersacademy/course/blob/master/pills/js_conventions.md)

##### Naming Variables

Use lowerCamelCase:

```javascript
var theMeaningOfLife = 42
```

Note the first letter is lower case.

##### Naming Methods

Use lowerCamelCase:

```javascript
class Thermostat {
  increaseTemperature(){

  }
}
```

Use 'is' instead of '?' for a method that returns a boolean:

```ruby
class Dog
  def purebreed?
    true
  end
end
```

In javascript, this would be:

```javascript
class Dog {
  isPurebreed() {
    return true;
  }
}
```

Javascript has no concept of private methods. Instead, to mark a method that should only be accessible inside the class should be prefixed by an underscore:

```ruby
class Dog
  private

  def microchipped?
    true
  end
end
```

```javascript
class Dog{
  _isMicrochipped() {
    true
  }
}
```

##### Constants

Javascript does not have a concept of constants, however we can define a constant reference to a value [see here](https://www.w3schools.com/js/js_const.asp)

If we have values we do not expect to change, we can mark them as a const, and with capital letters:

```javascript
class Dog {
  const NUMBER_OF_LEGS = 4;
}
```

#### TDD with Javascript

Node is a way of running javascript outside a browser - it is a program that runs javascript files in the command line (which is how server-side javascript is run - client-side javascript is run in the browser).

Don't need to download jasmine standalone for each project, sometimes it can be accessed by a ruby app, or you can copy the files into a new project folder.

Command+r to refresh the page, rather than find the specrunner html file.

"use strict" at top of a file prevents you from making new global variables (i.e. if you forget to add 'var' or 'let').

__var is function-scoped.__

__let is block-scoped.__

Use let rather than var - best practice to do this, just use var when compatibility is an issue.

Javascript does not have implicit returns - you MUST tell it what it needs to return.

In chrome, hitting '.' after a variable name will bring up a list of possible methods.

Use === to compare values in javascript

=> is the arrow function - similar to a block in ruby

[for...of creates a loop iterating over iterable objects:](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...of)

```javascript
array1 = ['a', 'b', 'c'];

for (element of array1) {
  console.log(element);
}

// expected output: "a"
// expected output: "b"
// expected output: "c"
```

Can create functions without a class.

Static methods are similar to class methods in ruby.

#### Reviews

Like a tech test. Do __at least__ two during the course. You have access to codegrammer for as long as you are jobhunting. This might be several months.

#### JQuery Events

[jquery events pill](https://github.com/makersacademy/course/blob/master/pills/jquery_events.md)

---

### Reflection

text

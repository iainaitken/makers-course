# Week 6, Day 5

## Links

* [Week outlines](https://github.com/makersacademy/course/blob/master/week_outlines.md)
* [Knowledge Pills](https://github.com/makersacademy/course/blob/master/pills.md)
* [The Escalation Process](https://github.com/makersacademy/course/blob/29a5e4a3c1776d32eda8f3ee55edc1dd124b05ba/pills/escalation_process.md)
* [Feedback form](https://docs.google.com/forms/d/1dr6yUt7M2HJyDEnMoqjuNpew3mUgFQUp79WQbT7wv68/edit)
* [Timetable](https://airtable.com/shr9ia7PTZfhGxXQa/tblU9M74TCpg89oGC)

## Goals for the week/day

[Airtable: TDD & OOD](https://airtable.com/shrr9VqhGBzPyfa7E/tblokmw6yNUO75ge6)

[Reflective Learning](https://github.com/makersacademy/course/blob/master/goals/reflective_learning.md)

[Progress](https://github.com/makersacademy/course/blob/master/goals/progress_insight.md)

[SMART Goals](https://docs.google.com/document/d/1Tcw_8OuOSXArP8Wr7X1jywWDV8NW_LzYmFawUCBYIZ8/edit)

By the end of the week, the goal is to be able to answer "yes" to the week's primary question:

__Can you learn a new language and its patterns?__

By the end of the week all developers can:

* Test drive a simple front-end web app with Javascript
* Follow an effective process for learning a new language

### Check your understanding

To guide your learning, aim to be able to answer "yes" to the questions below.

Return to these questions each day to check your understanding.

#### JavaScript

* Can you read and write JavaScript syntax?

* Can you understand the rules that govern the behaviour of the this keyword?

* Can you follow the flow of an Ajax request and response?

* Can you follow the flow of control through code that uses callbacks?

#### Transferring your existing skills

* Can you encapsulate behaviour in JavaScript?

* Can you get visibility effectively in JavaScript?

* Can you TDD in JavaScript?

* Can you follow the flow of control over the whole web app cycle? e.g. the interface of a thermostat is displayed in HTML/CSS, the "increase temperature" button is clicked, a JavaScript click event fires, JavaScript code runs to handle the event, an Ajax request is made, a Sinatra controller POST action handler is run, a Thermostat Ruby model is updated, the new temperature is saved to a Postgres database, the new temperature is returned as JSON by the Ruby controller, JavaScript code runs to update the temperature in the web page.

---

## Notes

### Travis CI

Continuous Integration (CI) is the practice of merging in small code changes continuously, rather than merging in a large change at the end of a dev cycle.  The goal is to build better software by developing and testing in smaller increments.

Travis CI automatically builds and tests code changes.

When you run a build, Travis CI clones the github repo and carries out a series of tasks to build and test the code. If it passes, Travis CI can deploy the code to a web server or application host.

To use Travis CI, add your repo to Travis on their website, and add a .travis.yml file that tells Travis what to do. Pushing that file to git triggers the travis build. You need to use bundle install to install dependencies, and rake to build the project.  Rake is a task manager, used in Rails, but can be used independently of Rails.

### Closures

A closure is the combination of a function together with references to its surrounding state. This means that a closure gives you access to an outer function's scope from an inner function. For example:

```javascript
function init() {
  var name = 'Mozilla'; // name is a local variable created by init
  function displayName() { // displayName() is the inner function, a closure
    alert(name); // use variable declared in the parent function
  }
  displayName();
}
init();
```

init() creates a local variable called name and a function called displayName(). The displayName() function is an inner function that is defined inside init() and is available only within the body of the init() function. Note that the displayName() function has no local variables of its own. However, since inner functions have access to the variables of outer functions, displayName() can access the variable name declared in the parent function, init().

#### Example 1

```javascript
function makeCounter() {
  var n = 0;
  return function() {
    n = n + 1;
    return n;
  }
}

var counter = makeCounter();
console.log(counter())
console.log(counter())
console.log(counter())
```

Prediction - the above example should increment n by 1 each time console.log(counter) is called.

Result - it does.

#### Example 2

```javascript
function counter(firstN) {
  var n = firstN;
  return function() {
    n = n + 1;
    return n;
  }
}

var counter = counter(5);
console.log(counter())
console.log(counter())
console.log(counter())
```

Prediction - the above code should return 6, 7, and then 8. The number increases by 1 each time console.log(counter()) is called; the difference to example 1 is that the starting number is passed in as an argument (firstN).

Result - it does.

#### Example 3

```javascript
function SecretDiary() {
  var locked = true,
      contents = "Hey!";
  
  function unlock() {
    locked = false;
  }
  
  function lock() {
    locked = true;
  }
  
  function read() {
    if (locked) { return "Nope!"; }
    return contents;
  }
  
  function write(message) {
    if (locked) { return "Nope!"; }
    contents = message;
  }
            
  return {
    unlock: unlock,
    lock: lock,
    read: read,
    write: write
  };
}

var secretDiary = SecretDiary();
console.log(secretDiary.read());
secretDiary.unlock();
console.log(secretDiary.read());
```

This is an example of javascript factory function pattern. The hash being returned at the end is broadly equivalent to a constructor class - it creates properties of the SecretDiary object that can be accessed through dot notation.

It is an alternative to using class structures or the constructor.

Prediction - the code will output:

"Nope!"
"Hey!"

Result - it did.

### [Encapsulation with the constructor and prototype pattern](https://github.com/makersacademy/skills-workshops/tree/master/javascript_fundamentals/encapsulation_with_constructor_and_prototype_pattern)

See skills workshops - javascript fundamentals - encapsulation...

Encapsulation is:

1. Grouping behaviour with the data it operates on
2. Hiding details of data and implementation from other units

Q.1 How doe the printed output of the program change if you rename CountModel to countmodel?

A. It doesn't change.

Q.2 // How does the printed output of the program change if you rename `set` to `_set` (and change `countModel.set(5)` below to `countModel._set(5)`)?

A. I think that this changes set to a method that is not visible outside the class; having said that, _count seemed to be accessible, so I think that the output won't change.

Correct - it did not change.

Q.3 How does the printed output of the program change if you uncomment the line below? Why does this happen?

A. I think this will return the object when the function is called. I'm not sure what effect this will have.

This threw an uncaught TypeError - countModel.set is not a function. 

Q.4 How does the printed output of the program change if you add this code? Why?

I think that this might override the existing set function, so that the output will be "hello" instead of 5.

A. Incorrect - output is 0. I think this is because the set method is being overwritten, but not in a way that affects the output of the .count method. _count is not amended when .set is called, and remains at 0.

### [Constructors and Prototypes Blog](https://tanzu.vmware.com/content/blog/javascript-constructors-prototypes-and-the-new-keyword)

A constructor is _any_ function that is used as a constructor.

A constructor is used with the new keyword:

```javascript
var Vehicle = function Vehicle() {
  // ...
}

var vehicle = new Vehicle();
```

When new Vehicle() is called, JavaScript does four things:

1. It creates a new object.
2. It sets the constructor property of the object to Vehicle.
3. It sets up the object to delegate to Vehicle.prototype.
4. It calls Vehicle() in the context of the new object.

The result of new Vehicle() is this new object.

When the constructor property of the object is set to Vehicle, this means that:

```javascript
vehicle.constructor == Vehicle  // true
vehicle instanceof Vehicle      // true
```

The constructor property is not an ordinary property of the object; it doesn't show up if enumerate the properties of the object.

Functions automatically get a property called prototype, which is just an empty object. When an object is created, it inherits the properties of it's constructor's prototype:

```javascript
Vehicle.prototype.wheelCount = 4;
var vehicle = new Vehicle;
vehicle.wheelCount;         // 4
```

This inheritance is more than simply copying properties to the new object.

__THe object is set to delegate any properties which haven't been explicitly set up to its constructor's prototype.__  This means that any changes to the prototype are automatically inherited by the instance of the object:

```javascript
Vehicle.prototype.wheelCount = 6;
vehicle.wheelCount;         // 6
```

We can override a prototype when we create an instance of an object:

```javascript
vehicle.wheelCount = 8;
vehicle.wheelCount          // 8
(new Vehicle()).wheelCount  // 6;
```

As a method is just a function assigned to a property then we can override prototypes with methods, too:

```javascript
Vehicle.prototype.go = function go() { return "Vroom!" };
vehicle.go();                              // "Vroom!"
```

A word of warning; JavaScript will return the new object from the constructor function unless a different explicit return value is provided for, in which case the object just gets dropped.

---

## Reflection

text

# Week 6, Day 3

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

### This in Javascript

[Link to artcile](https://javascriptissexy.com/understand-javascripts-this-with-clarity-and-master-it/)

We use 'this' similar to how we use pronouns in English - 'he' instead of 'John', for example:

"John is running fast because __he__ is trying to catch the train"

'This' refers to an object; it refers to the subject in context, or the subject of the executing code:

```javascript
var person = {
    firstName: "Penelope",
    lastName: "Barrymore",
    fullName: function () {
        ​// Notice we use "this" just as we used "he" in the example sentence earlier?:
        console.log(this.firstName + " " + this.lastName);
    ​    // We could have also written this:​
        console.log(person.firstName + " " + person.lastName);
    }
}
```

This avoids the code becoming ambiguous - what if there is another, global, variable with the name 'person'? It also looks better.

Functions in JavScript have properties.

When a function executes, it gets the 'this' property - __a variable with the value of the object that invokes the function where 'this' is used.__

This therefore always refers to, and holds the value of, an object. It is usually used inside a method or function - if called outside of either of those then, in strict mode, it holds the value of undefined in global scope and in anonymous functions that do not refer to an object.

Sometimes, the name of an object may not be known, therefore we need 'this' to be able to bind the action of the function to the object. Some jQuery actions rely on this, such as binding an anonymous function to an object that invokes the click method - it's not always known _which_ object will invoke the click method.

#### Important

> 'This' is not assigned a value until an object invokes the function where 'this' is defined. When it does, 'this' holds the value of the invoking object.
>
> However, in some circumstances, 'this' does not have the value of the invoking object.

When we use 'this ' in the global scope, it is refers to the _window_ object. This is because all global variables and functions are defined on the _window_ object (unless in strict mode) that is the container of the javascript application.

Notes on context:

> Context is important in Javascript. The context of a function is the object that invokes it - similar to how context works in ordinary language. We can change contet, though, so a function refers to another object instead. This can be done with the apply() method - [link](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/apply).
> 
> The apply method calls a function with a given 'this' value, and takes in arguments as an array.
> 
> It can be used to invoke a method belonging to a specific object on another object, as per the example below, where the context of 'this' has changed from person to anotherPerson:

```javascript
var person = {
    firstName   :"Penelope",
    lastName    :"Barrymore",
    showFullName:function () {
        console.log (this.firstName + " " + this.lastName);
    }
}

person.showFullName (); // Penelope Barrymore

var anotherPerson = {
firstName   :"Rohit",
lastName    :"Khan"
};

person.showFullName.apply (anotherPerson); // Rohit Khan
```

Tricky cases:

* Inner functions. Where we have a nested function, and if we call 'this' in that inner function, then it cannot access the outer object. This is because 'this' is accessible only by the function that calls it - i.e. the inner function. This might be relevant if you try to pass a function (such as a forEach loop - an anonymous function) to the original object or some of its properties.
* Callbacks - will look at these later this week.
* Assigning a method to another variable. If we have an object and a method that is called on that object (see the example in the article, of a variable user that contains a method, data, which is a hash containing names and ages of golf players) then if we assign that method to a variable (in this case, user.data) then 'this' can escape its usual scope and be bound to the global scope instead. 
* Borrowing methods - see the article.

See the article linked above for fixes to these problems.

### Exploring asynchronicity and the event loop in Javascript

For each piece of code below:

1. Read the code.

2. Write down your prediction of what would happen if you run it (what will appear on the console, and in what order).

3. Run the code by pasting it in the console of your browser.

4. Compare the actual result with your predictions.

5. Using previous knowledge, given resources and the internet explain what actually happened.

#### Code block 1

```javascript
setTimeout(function() {
	console.log('hello')
}, 1000)
```

##### Prediction

I think this will print hello to the console at 10am.

##### Actual

It printed an integer (8) and then, after a pause, printed hello.

Running the code again increments the integer by 1 each time.

Having looked at some of the resources, I can see that this delays the printing of hellp to console by at least 1000 milliseconds, although I don't see the relevance of the integer underneath the code. It jumped from 13 to 253, which seems to indicate that it is tied to time or other operations completed.

#### Code block 2

```javascript
var callback = function() {
	console.log('hello')
}
setTimeout(callback, 1000)
```

##### Prediction

I think this does the same thing as the last example.

##### Actual

It did.

The integer also incremented by one, which I now think is related to the console rather than the code that is being executed.

#### Code block 3

```javascript
console.log('A')

var callback = function() {
	console.log('B')
}

console.log('C')

setTimeout(callback, 1000)

console.log('D')
```

##### Prediction

I think we will see A, C, D and B printed to the console, in that order.

##### Actual

I was right, and there was a one-second gap between D and B.

#### Code block 4

```javascript
console.log('A')

var callback = function() {
	console.log('B')
}

console.log('C')

setTimeout(callback, 0)

console.log('D')
```

##### Prediction

Again, we should see A, C, D and B printed to the console, in that order, but with no delay between D and B.

##### Actual

Correct.

#### Code block 5

```javascript
var a = 10

var callback = function() {
	a = 20
}

setTimeout(callback, 1000)

console.log(a)
```

##### Prediction

10 should be printed to the console. This is because the callback (that changes the value of a to 20) is not completed until the stack is cleared, i.e. after the call to console.log.

##### Actual

Correct.

#### Code block 6

```javascript
var a = 10

var callback = function() {
	a = 20
}
setTimeout(callback, 0)

console.log(a)
```

##### Prediction

I'm not sure whether 10 or 20 will be output to the console. I think 10, because the effect of setting a callback to 0 is that it is delayed until the stack is clear, and then executes with no delay - and the stack will not be clear until main() has stopped running.

##### Actual

10 was indeed output to the console.

#### Code block 7

```javascript
var a = 10

var callback = function() {
	a = 20
	console.log(a)
}
setTimeout(callback, 0)
```

##### Prediction

Here, 20 should be output to the console as the stack will clear immediately after the call to setTimeout. Now, the value of a is set to 20 before the call to console.log.

##### Actual

Correct.

#### Code block 8

```javascript
var callback = function() {
	return "hello"
}
setTimeout(callback, 2000)
```

##### Prediction

There should be a two second delay before hello is returned. Will we see anything in the console? Maybe in the return value, which I now think is denoted by <- ?

##### Actual

'hello' did not appear in the console, as there was no call to console.log. the '<-' value was 272.

#### Notes - the event loop ([link](https://www.youtube.com/watch?v=8aGhZQkoFbQ))

Looking at the JavScript runtime (which is where your code is executed when you run it, such as Chrome), we have the heap and the stack. Heap is where memory allocation happens, the stack is where we have our stack frames (where the program finds memory to execute functions). 

DOM refers to the HTML DOM (Document Object Model). When a webpage is loaded, the broswer creates a DOM of the page, which JavaScript can access, and change the elements contained within. (The HTML DOM tree includes the root < html > element, along with the < head > and < body >, and all of the bits contained within those branches).

As well as the runtime, we have WebAPIs, the event loop and a callback queue.

Javascript is a single-threaded language (unlike Ruby) - it has one call stack and can do one thing at a time. The call stack basically remembers where in the program we are - as each function is loaded into memory and executed, it goes to the top of the call stack. When the function is complete, it is removed from the call stack and the next function down is executed - think back to CS50 and recursion.

The stack trace is visible when debugging errors - it shows which functions are being called, and where the program got to when the bug was found.

Blocking is where you have a slow process on the stack.

This is a problem because we are running code in browsers. __The browser cannot do anything until the process is complete.__

The solution is asynchronous callbacks. This means we run code, give it a callback, and run it later.

For example, the setTimeout queues a function for a set amount of time in the future. This is usually displayed in milliseconds.

In terms of the stack, the delayed function comes off the stack and reappears after the set interval.  __This is where the event loop comes in.__

JavaScript can do more than one thing at a time despite it being a single threaded language because the browser is more than just the runtime.

With setTimeout, when we run the code, the browser takes the call and starts a timer in a webapi. The setTimeout function is complete and is taken off the stack while the timer runs in the background.

When the timer completes, the webapi cannot put the call back on the stack. Instead the callback is pushed onto the task queue, and the event queue looks at the stack and the task queue. If the stack is clear, the event loop will look to the task queue to see if there are any tasks that need to be completed - if so, it pushes the call back onto the stack.

__You will sometimes see 'setTimeout' set to 0 - what this does, taking into account how it works, is that it defers the function until the stack is clear, rather than a specific time in the future.__ This means that 'setTimeout' is not a guaranteed time to execution, it is a _minimum_ time to execution because it will have to wait on the callback queue until the stack is clear.

___All API requests (like an Ajax request) work in the same way.___

This explains why clicks in the browser get queued and then executed all in one go, if the browser is busy with other tasks.

__Callbacks__

Callbacks are either:

* Any function that another function calls
* An asynchronous callback, i.e. one that will be pushed to the callback queue later.

For example, if you have a forEach loop running (a type of callback), it will sit on the stack and block it until it is cleared. You can instead define the forEach loop to be an asynchronous callback by using the setTimeout function - if the loop is running through tasks that require heavy processing power, this frees the stack up to do other things in the meantime.

This is relevant because screen rendering takes place 60 times per second, and cannot be done if there is something on the stack blocking it. Render is given a higher priority than your callbacks, but is still blocked if the stack isn't empty.

You have to be careful how you queue up code if you are writing programs that use a lot of processing power, such as image rendering or processing. An example might be scrolling, where there is some kind of animation on receiving the scroll command.

---

### Reflection

text

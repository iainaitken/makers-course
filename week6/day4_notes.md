# Week 6, Day 4

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

### Callbacks and Following the Flow of Control Workshop

A method is something that is attached to a class or an object. A function is not so attached.

Javascript has evolved a lot over time - for example, it used to be best to create classes using a function, now we can use 'class'.

Callbacks are where you have a function that you define, and pass in to another function as a parameter, but you can set to one side and run later. They are used in setTimeout. 

Flow of control is the order in which each operation is evaluated.

---

### jQuery

jQuery selectors allow you to select and manipulate HTML elements. They find those elements based on their name, id, classes, types, attributes etc.

For example:

```javascript
$("p")
```

The above selector will select all paragraphs in the HTML document.

```javascript
$( document ).ready()(function() { {})
```

The above code detects when the webpage is "ready" - i.e. when it can be safely manipulated. This is when the DOM has been loaded. $() is shorthand for this, but it is best to use longhand.

```javascript
$( window ).on( "load", function() { ... })
```

The above code waits a little longer than the DOM to be loaded - this waits until the entire page (inc. images or iframes) has been loaded.

Event listeners wait for an event to occur; when they detect that it has occurred, then they run a bit of code.

Callbacks allow you to pass a function to another function and store it, so that it can be run later.


 
---

### Reflection

text

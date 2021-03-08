# Week 6, Day 1
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

#### Javascript

[Intro to JavaScript pill](https://github.com/makersacademy/course/blob/master/pills/javascript&JasminePill.md)

One testing framework for Javascript is Jasmine. Download the latest standalone version from [here](https://github.com/jasmine/jasmine/releases).

The framework comes as a zip file; the contents should be extracted into your project folder.

* Delete the Player.js and Song.js source files and replace them with your own.
* Delete the PlayerSpec.js test file and the SpecHelper.js, and replace them with your test files.
* Update the file paths and names in SpecRunner.html to refer to your files.

__function__

function has many uses in javascript, but importantly, it can be used to mimic elements of Ruby.

```javascript
class ClassName {}
```

```javascript
class ClassName {
  methodName() {
    // code goes here
  }
}
```

```javascript
methodName(function() {
  // code goes here
});
```

__Variables__

Variables need to be instantiated before a value is assigned to them (just like in C).  Variables should usually be prefixed with "var"; this means it is a local variable. If we do not have this prefix then javascript looks up the scope chain to find where the variable is; if it gets to the top of the scope chain (i.e. global scope) and it hasn't found the variable then it will create it there - i.e. it will create a global property, which we usually don't want.

---

### Reflection

text

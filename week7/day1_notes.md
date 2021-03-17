# Week 7, Day 1

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

By the end of week 7, all developers should be able to:

* I can build a frontend single-page app using only pure Javascript.
* I can request and use data from an external API.
* I can explain that libraries are made of ordinary code that I could write myself if I needed to.

---

## Notes

Week 7:
Group work all the time (but team can agree solo/self-led time)
Vanilla JS
Single-page app
What is vanilla JS?
* JS without any additional libraries
No Jasmine
No JQuery
JQuery - what did you use it for?
* connecting with APIs
* manipulating the DOM (making web-apps interactive)
    DOM: Document Object model
* Event listeners
Jasmine - what did you use it for?
* TDD
* Set Expectations
Didn’t use it for feature tests -> do it manually
What does a testing framework need to do?
* set Expectations
* compare two values - check they are equal? >> Assertion
* link to what you’re testing
* tell us if we fail
---
example test

```javascript
function sum(a, b) {
    return a + b;
}
// a == 2, b == 3
test(5, () => sum(2, 3))
function test(value, functionUnderTest) {
    if (value === functionUnderTest()) {
        console.log(“Success!!!!“)
        return True
    } else {
        console.log(“U lose :(“)
        return False
    }
}
if (5 === sum(2, 3)) {
    console.log(“Success!!!!“)
} else {
    console.log(“U lose :(“)
}
```

---

Notes on week challenge:

[link to repo](https://github.com/makersacademy/course/blob/master/further_javascript/notes_app_user_stories.md)

* Create notes app from 4 user stories (with an extra stretch user story)
* JS only, no frameworks
* Use [Makers Emojify API](https://makers-emojify.herokuapp.com/) to convert words into emojis. Learn to call an external API using only JS.
* Check [LocalStorage](https://blog.logrocket.com/localstorage-javascript-complete-guide/#:~:text=localStorage%20is%20a%20property%20that,the%20browser%20window%20is%20closed.) to see how to persist data in the browser, for the stretch user story
* Deploy the app as a final stretch goal. Probably best to use [Github Pages](https://pages.github.com/)

We have the following guidance:

* [Guidance on building a frontend, single page app](https://github.com/makersacademy/course/blob/master/further_javascript/frontend_single_page_app_guidance.md)
* [Frontend pill](https://github.com/makersacademy/course/blob/master/pills/frontend_single_page_app.md)
* [Guidance on testing without a testing library](https://github.com/makersacademy/course/blob/master/pills/writing_tests_without_a_testing_library.md)

---

### Reflection

text

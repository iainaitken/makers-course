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

* 

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
---
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

---

### Reflection

text

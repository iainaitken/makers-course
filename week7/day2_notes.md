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

### [JS Testing framework video](https://www.youtube.com/watch?v=HyGnxxKJmeQ)

A testing framework should have:

* Pass/fail
* Labels for tests
* Matchers - at basic, an equal matcher

The user will always be a programmer - the question is, how as a programmer would I like to use this?

Think about Input - Output. What is the input, what output will I get? For example we might want it to look like this:

Input:

it('2+2 is equal to 4', function(){
  expect(2+2).toEqual(4)
})

Output

Test: 2 + 2 is equal to 4
Pass

You can then use the errors in the console to build the test. THe first error we'll get is that 'it' is not defined.

```javascript
var it
```

We then find that it is not a function, so we could do this:

```javascript
function it() {}
```

After hard-coding an answer and then adding a test that will fail, our function might look like this:

```javascript
function it(label) {
  console.log(`Test: ${label}`)
}
```

This will mean the first part of our output is now correct - the name of the test will be displayed.

As we are passing a function into the it method, the best thing to label that would be 'callback':

```javascript
function it(label, callback) {
  console.log(`Test: ${label}`)
  callback()
}
```

This will raise an error as 'expect' is not defined.

```javascript
function expect() {

}

function it(label, callback) {
  console.log(`Test: ${label}`)
  callback()
}
```

This will in turn raise an error as .toEqual is not a property that can be called on undefined.

---

### Reflection

text

# Week 2, Day 5
## Subtitle

### Links

* [Week outlines](https://github.com/makersacademy/course/blob/master/week_outlines.md)
* [Knowledge Pills](https://github.com/makersacademy/course/blob/master/pills.md)
* [The Escalation Process](https://github.com/makersacademy/course/blob/29a5e4a3c1776d32eda8f3ee55edc1dd124b05ba/pills/escalation_process.md)
* [Feedback form](https://docs.google.com/forms/d/1dr6yUt7M2HJyDEnMoqjuNpew3mUgFQUp79WQbT7wv68/edit)

### Goals for the week/day

[Airtable: TDD & OOD](https://airtable.com/shrr9VqhGBzPyfa7E/tblokmw6yNUO75ge6)

[Reflective Learning](https://github.com/makersacademy/course/blob/master/goals/reflective_learning.md)

[Progress](https://github.com/makersacademy/course/blob/master/goals/progress_insight.md)

[SMART Goals](https://docs.google.com/document/d/1Tcw_8OuOSXArP8Wr7X1jywWDV8NW_LzYmFawUCBYIZ8/edit)

By the end of week 2, all developers should be able to:

* Use all of week 1's skills (don't underestimate the importance of this)
* Break one class into two classes that work together, while maintaining test coverage
* Unit test classes in isolation using mocking
* Explain some basic OO principles and tie them to high level concerns (e.g. ease of change)
* Review another person's code and give them meaningful feedback

Goals for the day:

* Learn about refactoring
* Learn about OO relationships

---

### Notes

__Can hash out code by using command + / (ctrl + /)!!!!!__

#### Refactoring

Refactoring is important. It allows us to:

* Improve the design of your code
* Learn more about the whole program you're designing
* Define the patterns and names that make your code extensible.

Extract variables

* Are there items in your class that can and should be distinct variables?

Extract methods

* Can you extract elements of your code into separate methods?
* Can those methods be private?

Extract classes

* If you are able to extract private methods, then it is likely you will be able to go further and create a new class with that private method.

#### OO Relationships 1

Use a class diagram to illustrate forwarding relationships.

[diagram.codes](https://playground.diagram.codes/d/class_diag)

_Exercise 1_

```class_diag
CLASS "Diary" as diary:
-"contents"
+"read"

CLASS "SecretDiary" as secretdiary:
-"diary"
-"unlocked"
+"unlock"
+"lock"
+"read"

secretdiary-diary: strict_association
```

_Exercise 2_

__Note: not complete__

#### Pair programming

Note - ctrl a puts cursor to left of command line, ctrl k deletes everything to the right of the cursor

---

### Reflection

Didn't really achieve much of my goals today - need to spend more time on OO principles!!

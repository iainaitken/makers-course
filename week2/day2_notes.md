# Week 2, Day 2
## TDD, domain modelling

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

Today, _if I have extra time outside the workshop and pair programming_, I will work on TDD. I will work on some makers TDD practicals:

* [Testing behaviour over testing state](https://github.com/makersacademy/skills-workshops/blob/master/practicals/testing/behaviour_not_state.md)
* [Learning by building RSpec](https://github.com/makersacademy/skills-workshops/blob/master/practicals/adventures/learning_by_building_rspec.md)

My main goal today is to improve TDD/RSpec skills, which I will be able to do either by the above practicals and/or the oystercard challenge in the afternoon.

---

### Notes

#### Workshop - domain model diagramming

[Link](https://github.com/makersacademy/skills-workshops/tree/master/object_oriented_programming/domain_model_diagramming)

What is a domain?

* An area of the real world that we want to represent as a model.
* An environment, everything related is contained within it.
* Made up of different elements.
* Collection of objects that might at one point interact with each other.

What is a model?

* A representation of something.

Domain model ^^

How can diagramming help us code?

* To visualise how things will interact with each other.
* Helps you think about order things need to happen in. What conditions need to be met before the end result can be achieved? What questions do you need to ask of the object that you're sending a message to.
* Reduce time spent writing code. Less refactoring because design choices surface early.
* Faster to change diagrams than code.
* Makes it easier to keep things simple - easier to understand what elements are doing what, keep to SRP.
* Helps focus on one thing.

Psuedocode also helps with the above

___Unified Modelling Language___

This is a widely adopted standard for creating a variety of diagrams which can be useful in your work as a developer.

__Modelling__

* Get verbs and nouns from user stories.

[wireframe.cc](https://wireframe.cc/) is good for class diagrams.

| class name |
|------------|
| attributes |
| methods    |

| class: BankAccount |
|------------|
| __Attributes__ |
| @balance : Int |
| @transaction : Array |
| __Methods__ |
| deposit()    |
| withdraw() |
| print_balance |

| class: Transaction |
|------------|
| __Attributes__ |
| @date: Date  |
| @value : Int |
| __Methods__ |
|  |

(diagram.codes](https://www.diagram.codes/) is good for sequence diagrams

Use UML for diagram conventions

Can save the code for the diagram in an .md file in the project folder so you can easily reuse it.

```flow
alias user="User"
alias notebook="Notebook"
alias note="Note"

user->notebook: "Notebook.new"
notebook-->user: "new notebook instance"
user->notebook: "notebook.add_note(info, tag)"
notebook->note: "Note.new(info, tag)"
note-->notebook: "new Note instance"
notebook->notebook: "@notes << note"
user->notebook: "notebook.search(tag)"
notebook->notebook: "@notes.select(tag)"
notebook-->user: "list of notes that include tag"
```

#### Testing Behaviour over testing state

[Link](https://github.com/makersacademy/skills-workshops/blob/master/practicals/testing/behaviour_not_state.md)

[exercise on github](https://github.com/iainaitken/makers-course/tree/main/week2/testing_behaviour)

---

### Reflection

text

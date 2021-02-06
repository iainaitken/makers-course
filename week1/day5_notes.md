# Week 1, Day 5
## Encapsulation and RSpec

### Links

* [Week outlines](https://github.com/makersacademy/course/blob/master/week_outlines.md)
* [Knowledge Pills](https://github.com/makersacademy/course/blob/master/pills.md)
* [The Escalation Process](https://github.com/makersacademy/course/blob/29a5e4a3c1776d32eda8f3ee55edc1dd124b05ba/pills/escalation_process.md)
* [Feedback form](https://docs.google.com/forms/d/1dr6yUt7M2HJyDEnMoqjuNpew3mUgFQUp79WQbT7wv68/edit)

### Goals for the week/day

[Reflective Learning](https://github.com/makersacademy/course/blob/master/goals/reflective_learning.md)

[Progress](https://github.com/makersacademy/course/blob/master/goals/progress_insight.md)

[SMART Goals](https://docs.google.com/document/d/1Tcw_8OuOSXArP8Wr7X1jywWDV8NW_LzYmFawUCBYIZ8/edit)

The goals for this week are:

* Test-drive a simple program using objects and methods
* Pair using the driver-navigator style
* Follow an effective debugging process
* Describe some basic OO principles like encapsulation, SRP

I feel that I have made significant progress towards all four goals. I am much more comfortable working with rspec and TDD; towards the end of the boris-bikes project the time taken to complete each task was much shorter and I felt much more fluent in writing tests, partly because I know more about rspec and its syntax, but also because I am gaining a greater understanding of what I should be testing for, before writing any code.

I have practised pairing throughout the week, and through using github to collaborate, it is possible to avoid the temptation to work in parallel rather than a driver/navigator style.

I can debug errors methodically.

I am still working on my understanding of encapsulation and SRP but I feel I have a basic grasp of it.

Goals for today:

* Improve knowledge of RSpec if I have free learning time - make a start on the udemy course and finish modules 1 and 2.

* Practice pair programming and TDD this afternoon; finish the boris bikes challenge if possible.

* Explain encapsulation and SRP at a high level to the peer group. Finish exercise 4 from yesterday.

---

### Notes

#### Encapsulation

Encapsulation is the packing of data and functions into a single component. Only the object can interact with its internal data.

Encapsulation means that all of the implementation details of a class are hidden; the only things that are exposed are the methods and properties required to use the class.

This helps a class to have clearly defined interfaces - the method names. As programmers we might want to change exactly how those methods are implemented, but to the outside world, nothing changes.

_to discuss with peer group_

* Encapsulation is where you pack data and functions into a single object.
* The idea is that only the object can directly manipulate the data that is inside it, using the methods contained within the object itself.
* An object is said to have high cohesion when the items inside it are closely related. For example, taking the boris bikes analogy, the DockingStation class would have lower cohesion if data and methods relating to the bikes were to be found there.
* Encapsulation helps security - users should not be able to directly manipulate data in your objects. They should only be able to do so through the methods you have defined for that purpose. Boris bikes example - in challenge 18 I needed to implement a way for the user to report that the bike was broken. Initially I used an attribute accessor so that they could change an instance variable, but realised that would break encapsulation (and the user could enter any value they wanted), so changed that to have a report_broken method instead/
* SRP - each class or method should do one job. You had one job!! Bit confused about this though, conflicting information about whether this applies to both classes and methods, maybe that's something we learn another week.

#### Q&A

DRY/SRP - Q. is it ok to have a line of code twice or should that be a method?

A. normally, create a method unless the lines do very different things in different contexts.

#### Peer Group 

Explained encapsulation - general feedback was that it was a decent explanation of the basics and a good foundation for people to build on.

#### Exercise 4

Completed this exercise - was confused about classes and separating methods out into classes with high cohesion until I recalled that I could make use of inheritance, so that the Diary class (which contained the information about whether the diary was locked, and the methods to lock and unlock it) could be a parent class, and a new DiaryEntries class could inherit from that class and hold the methods relating to the diary entries.

#### Afternoon retro

RSpec - don't worry about syntax at the moment, work with whatever is most readable for you right now. Later you'll get more comfortable with shortcuts etc

#### Pair Programming

##### Notes

Nested blocks - helps organise tests.

rspec -fd

Also - convention is to use # to describe instance methods:

```
describe '#release_bike' do
```

Context - just a header but will display in a different colour

---

### Reflection

text

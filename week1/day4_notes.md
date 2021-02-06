# Week 1, Day 4
## Subtitle

### Links

* [Week outlines](https://github.com/makersacademy/course/blob/master/week_outlines.md)
* [Knowledge Pills](https://github.com/makersacademy/course/blob/master/pills.md)
* [The Escalation Process](https://github.com/makersacademy/course/blob/29a5e4a3c1776d32eda8f3ee55edc1dd124b05ba/pills/escalation_process.md)
* [Feedback form](https://docs.google.com/forms/d/1dr6yUt7M2HJyDEnMoqjuNpew3mUgFQUp79WQbT7wv68/edit)

### Goals for the week/day

[Reflective Learning](https://github.com/makersacademy/course/blob/master/goals/reflective_learning.md)

[SMART Goals](https://docs.google.com/document/d/1Tcw_8OuOSXArP8Wr7X1jywWDV8NW_LzYmFawUCBYIZ8/edit)

The goals for this week are:

* Test-drive a simple program using objects and methods
* Pair using the driver-navigator style
* Follow an effective debugging process
* Describe some basic OO principles like encapsulation, SRP

Much progress has already been made towards the first three and I will have more pairing opportunities this afternoon and tomorrow, so today I will focus on OO principles such as encapsulation and the single responsibility principle.

I will use the Makers resources, in particular the encapsulation and cohesion practical and skills workshop. If there is time left over I will work on the Udemy RSpec course.

I will know whether I have improved if I can understand and explain SRP and encapsulation to my pair programmer this afternoon.

---

### Notes

#### Workshop - introduction to TDD

Why do we write tests?

* To find bugs
* Make sure behaviour of program is as expected
* To make it easier to refactor, so you know if changes break something else in the code
* Gives up to date documentation - what expcted behaviour is, what methods are being used etc. Good ests will show you how to use the code, great tests will sometimes tell you *why* the code works the way it does
* Specific/small units of testing that help us get to bugs faster - ensure code works in isolation, each individual class
* Writing tests helps you clarify your thoughts
* Allows the team to work more effectively
* Makes it easier to extend your code


Why do we test first?

* Keeping tabs on your program as you go
* Helping you write the code
* Works as a design tool
* Drawing from user stories / specifications for our tests, making them as specific as possible
* To make effective design choices
* Ensure code is as simple as possible
* Writing tests first helps clarify thoughts without the discomfort of refactoring later
* Focuses on actual uses of program you're trying to implement
* Testing determines if there is a better way to write something (i.e. code uses fewer resources)
* Make sure you always have tests, don't get lazy as project moves on
* Narrows your focus to that one next thing you'd like to implement

Feature test the user story - often large tests that span different classes etc. they are about how the code is used.

Unit tests test individual parts of the code. They are about how the code works.

RSpec notes - can use "subject" as shortcut for dice = Dice.new - expect(subject).to ..... but only where the class does not take arguments on initialisation (otherwise you need to also pass in an argument). Subject is a placeholder variable, you can use any word that makes sense.

#### Independent learning - encapsulation and the Single Responsibility Principle

[Makers skills workshops - encapsulation](https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/encapsulation.md)

Encapsulation is, according to wikipedia:

> In object-oriented programming (OOP), encapsulation refers to the bundling of data with the methods that operate on that data, or the restricting of direct access to some of an object's components.[1] Encapsulation is used to hide the values or state of a structured data object inside a class, preventing direct access to them by clients in a way that could expose hidden implementation details or violate state invariance maintained by the methods.

I take this to mean that relevant data and methods are kept inside the class in question, and that the idea behind this is to keep certain data or methods hidden so that data cannot be accessed or manipulated in unexpected ways.

##### Information hiding

> Under the definition that encapsulation "can be used to hide data members and member functions", the internal representation of an object is generally hidden from view outside of the object's definition. Typically, only the object's own methods can directly inspect or manipulate its fields. Hiding the internals of the object protects its integrity by preventing users from setting the internal data of the component into an invalid or inconsistent state. A supposed benefit of encapsulation is that it can reduce system complexity, and thus increase robustness, by allowing the developer to limit the interdependencies between software components.

The programmer can restrict the ways in which an objects values can be accessed through encapsulation. Users cannot use other methods to amend those values.

##### Cohesion

Each class should have one purpose or job.  A class has high cohesion when everything inside of it relates to that purpose.

Take the example in the link above - the purpose of the note class should be to store information that is in the note - the title and the body. The say_hi_to_kay method is not linked at all; indeed we could refactor even further by taking out the display method, whose purpose is to print the contents of the note (rather than store information).

###### Exercise 1

Use a diagram to group the methods in these examples:

> Bank
>  - get_balance
>  - credit_account(date, amount)
>  - debit_account(date, amount)
>  - print_statement

Here, credit_account and debit_account are closely linked (adding or removing funds), and also get_balance and print_statement are closely linked (displaying the contents of the account).

> SecretDiary
>  - lock
>  - unlock
>  - add_entry
>  - get_entries

Here, lock and unlock are closely linked, as are add_entry and get_entries.

###### Exercise 2

In this exercise, add and subtract are closely linked, whereas print_answer could be separated out.

###### Exercise 3

I would refactor here to create a CalculatorDisplay class, which contains the method print_answer.

###### Exercise 4

to complete

#### Pair programming

Max unable to make pair today, so worked solo.

Worked on Boris Bikes challenges 13-18, covering:
* writing rspec tests that expect errors
* refactoring tests and code
* SRP
* predicate methods
* magic numbers and constants
* default values and instance variables
* attribute accessor

Predicate method - a method that ends with ? and returns either true or false.

Magic numbers are unexplained hard-coded values. They should not exist.

Avoid magic numbers through using class constants. Class constants are written in SCREAMING_SNAKE_CASE and can be accessed from outside the class as follows:

```ruby
DockingStation::DEFAULT_CAPACITY
```

_Note - use the class name, not the name of an instance of that class._

Make use of attributer reader to access instance variables, attribute accessor if you want the user to be able to alter those instance variables.

Learning point - refactored challenge 18 as, thinking about the principle of encapsulation, I should not allow a user to alter the state of the object as they might be able to pass in input that makes the program work unexpectedly. Instead I defined a method, report_broken, and used attribute reader.

---

### Reflection

Although progress was made on my goal today, and although I felt that I did very well with working through the boris-bikes challenge (getting through 13-18 on my own), the main thing holding me back today is a proper understanding of using git, in particular how to arrange repos when people will be collaborating with them. Aim to speak to a coach about this tomorrow.

Evidence of progress in practicing TDD and knowledge of encapsulation - exhibited good knowledge of red-green-refactor on challenge 18 when I refactored my code to ensure that the class was properly encapsulated and that an instance variable could not be amended by users except through using the class method defined for that purpose.

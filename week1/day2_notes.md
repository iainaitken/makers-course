# Week 1, Day 2

## Notes

### Tracking your learning

[Tracking your learning](https://github.com/makersacademy/course/blob/master/goals/self_directed_learning/resources/tracking_your_learning.md)

Looking through the resources on the above page:

* People have tracked their learning in many different ways, but all keep track of broadly the same items
* People keep track of projects, feedback, learning objectives, reflection etc.
* I am most likely to use a github repo, for ease of access across devices and so that I have the option of using the repo as part of my portfolio.

### Workshop: Intro to Debugging

A bug is where your program does not behave in the way you expect.

Different languages have different debugging tools.

"Tighten the loop and get visibility"

This means find the exact line that the bug is (or as close to it), and get visibility (find out what's happening, i.e. print to console to see what the underlying variables etc are doing).

> Wisest are they who try only one thing to fix the problem. Faffing about trying whatever occurs to you next is a recipe for development hell.

#### Using rspec

Can specify which test to run in the command line:

rspec ./spec/appointment_spec.rb:8

Can also get more visibility by running the code itself after a test in rspec has failed.

The stack trace is displayed after the test error message. It is read from the bottom up.

#### Ruby notes

Attribute reader in Ruby - allows us to access instance variables outside the class. It also allows us to expose variables in private methods.

Default arguments - if you have 4 parameters, one of which has a default argument, then if you pass in 3 arguments Ruby will assume those three are for the parameters that do not have default values.

### Pairing practice

Working on challenges 1-10 of the Boris Bikes project. Learning points:

* Setting up a project using git, with a README
* Explaining the importance of a README
* Pushing the project to github
* Learning what a User Story is
* Extracting a Domain Model from a User Story
* Learning what a feature test is
* Define a stack trace
* Use irb to run a feature test
* Using a stack trace to debug errors
* RSpec - use as a testing framework
* Creating a spec file
* Describe an Object using a specification
* Set up a Unit Test and pass it
* Use require in a spec file
* Move between feature and unit tests
* RSpec it tests
* Test that an Object responds to a message
* Using objects within other objects
* RSpec predicate syntax
* Set up a feature test and pass it

---

## Reflection

### Debugging workshop

Honed debugging skills, in particular reading the stack trace and that different terminals may display different results, i.e. Git Bash did not display parts of the stack trace from the installed gems.

It is important to be methodical when debugging. Sometimes the answer might seem obvious, but often the bug will be more complex. Use the information provided in the error messages and rspec to get to the problem.

### Pairing practice

Much of what we worked on today wasn't new to me, however it was useful to get experience with some of the terminology. In particular, the idea of User Stories, and how to create domain models from them.

Need to work on being more disciplined when pairing - it's very easy to end up working in parallel with your pair when you are working remotely with two separate systems.

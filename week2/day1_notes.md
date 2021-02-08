# Week 2, Day 1
## Code reviews

### Links

* [Week outlines](https://github.com/makersacademy/course/blob/master/week_outlines.md)
* [Knowledge Pills](https://github.com/makersacademy/course/blob/master/pills.md)
* [The Escalation Process](https://github.com/makersacademy/course/blob/29a5e4a3c1776d32eda8f3ee55edc1dd124b05ba/pills/escalation_process.md)
* [Feedback form](https://docs.google.com/forms/d/1dr6yUt7M2HJyDEnMoqjuNpew3mUgFQUp79WQbT7wv68/edit)

### Goals for the week/day

[Reflective Learning](https://github.com/makersacademy/course/blob/master/goals/reflective_learning.md)

[Progress](https://github.com/makersacademy/course/blob/master/goals/progress_insight.md)

[SMART Goals](https://docs.google.com/document/d/1Tcw_8OuOSXArP8Wr7X1jywWDV8NW_LzYmFawUCBYIZ8/edit)

By the end of week 2, all developers should be able to:

* Use all of week 1's skills (don't underestimate the importance of this)
* Break one class into two classes that work together, while maintaining test coverage
* Unit test classes in isolation using mocking
* Explain some basic OO principles and tie them to high level concerns (e.g. ease of change)
* Review another person's code and give them meaningful feedback

---

### Notes

Code reviews

What are they for?

* Used to understand whether code is readable
* Get feedback on how well you've met the brief
* Get feedback on how well you've followed principles
* Making sure code is consistent across a team
* Get feedback on whether code is well organised, clean, follows style guide
* Someone else might spot edge cases/problems with implementation
* Improve methods used to make the code run faster
* Learning! Understand other code, learn how team works, others spot problems with my code etc
* Entire team knows about as much of the codebase as possible

What is high-quality code?

* Code is high quality when it is easy to change.
* Minimalistic - achieve result with minimum amount of code.
* Readable and transparent as to what it does.
* Follows SRP
* Follows DRY
* Avoid hard-coded values
* Well organised
* User requirement fulfilled by code which flows
* Efficient - optimised to run in most efficient way, low runtime, low memory etc. Note - often it is more important for the code to be readable by the developers. Customers don't care about this but _do_ care about your ability to make changes.
* Every line of code is used - test coverage

Rubocop is a code linter.

Tools can't tell us some things about our code, however, like SRP, DRY, well-organised etc.

What do we look at? Just last commit? No - look at all changes between master and pull request.

"Start a review" allows other users to see and comment on the review.

Good to discuss pull request and README before looking at the code itself.

Helps to explain _why_ changes are suggested.

Ask open questions about things like design choices etc.

YAGNI - identify code that isn't required. Extra functionality isn't necessarily a good thing - customers then expect more features than they asked for and more than you can maintain. Also, can go over time or over budget if you do extra things.

#### Code review

[Review hints](https://github.com/makersacademy/course/blob/master/how-to/code-review.md)

Feedback from Rorie:

* Readable
* Neat
* Try to minimise code if possible.

Javier's feedback included the following possible improvements:

* can use an array of weather states and the .sample method to avoid case statements.
* no more than 3 lines of code in a method
* use if-else statements if more than one if in a method
* use described_class for better adaptable code
* delete spaces you don't need, and irrelevant comments

#### OO Design

This week's focus. Build on the airport challenge.

Fundamental purpose is to combine information and methods into a single unit.

Sometimes true to say that OO code is a way of representing things in the real world.

Models are not a perfect representation of things but they are useful - what does it need to know/do in order to be useful.

This week is an introduction - exposure to new concepts and a framework how to think about things the rest of the course.

Expected to do a Review in week 10, but do one earlier!!

#### Afternoon pairing

Paired with Rorie - learned some tips about rspec, including:

* Can use

```ruby
expect(subject).to respond_to(:top_up).with(1).argument
```

* Use of "fail" syntax in place of "raise"
* Avoid hard-coding the maximum balance - can access a class constant as follows:

```ruby
Oystercard::MAXIMUM_BALANCE
```

Also learned to write tests that anticipate future changes to the program. For example, don't write:

```ruby
expect{ subject.top_up(10) }.to change { card.balance }.from(0).to(10)
```

Instead use

```ruby
expect{ subject.top_up(10) }.to change { card.balance }.by 10
```

In this case, that's because the card has a default balance which might change in the future. Assuming a default balance of 0 will mean the test breaks if the default balance changes.

---

### Reflection

Today was very valuable in receiving feedback on my weekend challenge and in practising further TDD and OO programming. In particular, made headway in using all of week 1's skills, and in giving feedback.

Need to properly reflect on last week based on makers learning resources.

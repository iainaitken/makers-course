# Week 2, Day 4
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

My goals for today are:

* Continue improving RSpec proficiency
* Learn about breaking one class into two
* Learn about basic OO principles

The first and second will be met by working through the pairing challenge, while the third will be met by making use of the makers resources, in particular the Dependency Injection and OO relationships practical.

---

### Notes

#### Dependency Injection

[link](https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/dependency_injection.md)

Dependency injection is a technique for helping you test classes in isolation. It allows a class to use either its real dependency, or a double.

A dependency is where a class depends on another class, like so:

```ruby
class Greeter
  def greet
    smiley = Smiley.new
    "Hello #{smiley.get}"
  end
end

class Smiley
  def get
    ":)"
  end
end
```

Greeter is dependent on Smiley as it calls Smiley. Smiley has no dependencies, it is self-contained.

In this instance, the dependency in Greeter is hard-coded and Greeter is "tightly coupled" to Smiley.  We can't call Greeter#greet without calling Smiley#get. If Smiley#get breaks then Greeter#greet will break, too. This makes it hard to track down bugs.

We can refactor the code as follows:

```ruby
class Greeter
  def initialize(smiley = Smiley.new)
    @smiley = smiley
  end

  def greet
    "Hello #{@smiley.get}"
  end
end

class Smiley
  def get
    ":)"
  end
end
```

This is dependency injection. Instead of hard-coding the dependency, we inject it into the class via the initializer.

[Link to exercises](https://github.com/iainaitken/makers-course/tree/main/week2/dependency_injection)

Can use double to mimic both instances of a class and classes themselves (see exercises in link above).

#### Pair Programming

Paired with Christine.

Key points - need further work on dependency injections, plus focus on TDD basics - red, green, refactor. Work slowly and methodically.

---

### Reflection

Slow but steady progress is being made this week, I feel. I am much more comfortable with rspec, I think I just need to focus on following the TDD process more.

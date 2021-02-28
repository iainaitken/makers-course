# Week 3, Day 5

## Web apps

### Links

* [Week outlines](https://github.com/makersacademy/course/blob/master/week_outlines.md)
* [Knowledge Pills](https://github.com/makersacademy/course/blob/master/pills.md)
* [The Escalation Process](https://github.com/makersacademy/course/blob/29a5e4a3c1776d32eda8f3ee55edc1dd124b05ba/pills/escalation_process.md)
* [Feedback form](https://docs.google.com/forms/d/1dr6yUt7M2HJyDEnMoqjuNpew3mUgFQUp79WQbT7wv68/edit)
* [Timetable](https://airtable.com/shr9ia7PTZfhGxXQa/tblU9M74TCpg89oGC)

### Goals for the week/day

[Airtable: TDD & OOD](https://airtable.com/shrr9VqhGBzPyfa7E/tblokmw6yNUO75ge6)

[Reflective Learning](https://github.com/makersacademy/course/blob/master/goals/reflective_learning.md)

[Progress](https://github.com/makersacademy/course/blob/master/goals/progress_insight.md)

[SMART Goals](https://docs.google.com/document/d/1Tcw_8OuOSXArP8Wr7X1jywWDV8NW_LzYmFawUCBYIZ8/edit)

By the end of week 3, all developers should be able to:

* Build a simple web app
* Follow an effective debugging process for web applications
* Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS)
* Explain the MVC pattern

---

### Notes

#### Keyword Arguments

Keyword arguments are Ruby syntax that help when passing arguments into a method.  They are conceptually similar to passing a hash to the method.

Keyword arguments take many forms; in bookmark manager we saw required keyword arguments:

```ruby
def initialize(id:, title:, url:)

end
```

If a required keyword argument is missing, ruby will raise an ArgumentError.

Using keyword arguments can make your code more clear:

```ruby
def mysterious_total(subtotal, tax, discount)
  subtotal + tax - discount
end

mysterious_total(100, 10, 5) # => 105

def obvious_total(subtotal:, tax:, discount:)
  subtotal + tax - discount
end

obvious_total(subtotal: 100, tax: 10, discount: 5) # => 105
```

They also allow us to switch the order of the arguments, without affecting the behaviour of the method.

In short, use them wherever possible. The benefits to code readability outweigh the loss of terseness.

---

### Reflection

text

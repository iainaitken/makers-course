# Week 3, Day 2
## Subtitle

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

#### Modelling HTTP requests/responses

_Why model a process?_

* It's a quick way to figure out and cement your understanding of how a process works.

* It's much quicker than writing the code that enacts the process.

* It's much easier to iterate on a process model than the code that enacts the process.

* It's much easier to add detail to a process model than to add it to code.

* It's a great way to communicate and discuss a process with another person.

_What forms can the model take?_

Many forms!

* A boxes and arrows diagram.

* An interpretive dance.

* A performance where each person is a thing in the process (a server, a GET request).

* A form of your own invention.

Use a sequence diagram to model the requests and responses.

Client sends a request to the server, which responds with a status code and html. Sometimes, that html will contain a link to another page, for example when an image is being displayed. The client will then make a request to that link, which also responds appropriately.

HTTP codes explained in [cats](http.cat) and [dogs](https://httpstatusdogs.com/).

#### Servers and Clients: 1

Note - telnet no longer installed automatically, need to use homebrew to install it.

Exercise 2

1. The server can stay running if you incorporate a loop - see for example the [TCP Documentation](https://ruby-doc.org/stdlib-2.4.0/libdoc/socket/rdoc/TCPServer.html)

```ruby
require 'socket'

server = TCPServer.new 2345
loop do
  client = server.accept   
  client.puts "Hello !"
  client.puts "Time is #{Time.now}"
  client.close
end
```

The server constantly runs the above loop - waiting for a client to connect, letting the client connect, and then when the client closes the connection, the loop starts again. This doesn't work well with example 2, below!

2. You can easily implement a loop whereby the user can keep typing stuff until they quit, as follows:

```ruby
socket = server.accept

loop do
  socket.puts "What do you say?"
  they_said = socket.gets.chomp

  if they_said == "quit"
    socket.close
  else
    socket.puts "You said #{they_said}. Goodbye!"
  end
end
```

4. Notelist created and working, although need to refactor to keep the connection alive.

#### Pair Programming

Cancelled.

Notes:

In Sinatra, the params hash is a hash containing all of the params from the HTTP request.

---

### Reflection

text

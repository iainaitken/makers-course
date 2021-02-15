# Week 3, Day 1
## Intro to the web

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

#### How DNS works

[Link](https://howdns.works/)

* Computers use IP addresses to identify each other on the internet.
* People use words instead (i.e. google.com).
* DNS matches IP addresses to domain names.
* Your browser and OS can search their caches to see if they know the IP address for a given website.
* If they can't find anything then they can make a request of a resolver server - usually hosted by your ISP.
* The resolver can search its cache for information - if there is nothing there then is can check the root server.
* The root can search its cache for information - if nothing, then it knows where to locate the TLD (Top-Level-Domain) server. TLD is .com, .co.uk, .org etc. There are currently 13 root servers globally. Root servers sit at the top of the DNS hierarchy. They are named A-M (a.root-servers.net, b.root-servers.net etc) although each server may consist of many different server machines.
* The TLD server will know the authoritative name servers for the website you're looking for - when a domain name is purchased, the domain registrar transmits that information to the TLD servers.
* The authoritative name server will know everything about that particular domain name - they will provide answers to any DNS query, such as websites, email etc. There are usually several of these servers in case one of them fails, and to help distribute workload. The name server will provide you with the IP address, which your browser/OS will store in its cache.

#### The Web

[Link](https://github.com/makersacademy/course/blob/93dba358ffb235d943c5f13349f6a26e5487d17b/pills/internet_web.md)

* The internet is a network of servers linked by phone lines, i.e. _the physical infrastructure_.
* The web is a network of documents linked by hyperlinks, i.e. _the content_.

##### Protocols

[Link](https://github.com/makersacademy/course/blob/93dba358ffb235d943c5f13349f6a26e5487d17b/pills/internet_web.md)

__IP (Internet Protocol)__

Used to define connections between networked computers. Splits requests and responses into multiple packets (think of the envelope/letter analogy).

Used by both TCP and UDP (UDP is used by video services where speed is more important than reliability).

__TCP (Transmission Control Protocol)__

Adds a layer over the top of IP that deals with _transmission control_. This means that if a packet gets lost in transit, they are re-requested.

__DNS (Domain Name System)__

Directory enquiries for the internet. Matches IP addresses to domain names.

__HTTP (Hypertext Transfer Protocol)__

Defines the format for how documents can be served over the internet.

__HTML (Hypertext Markup Language)__

Allows formatting of web pages.

#### Pair Programming

WWW is an information space made up of resources and clients.

Resources are information stored on servers; clients are entities that request those resources.

Your browser acts as a client when you visit a website. It requests a resource from a server.

[World Wide Web](https://github.com/makersacademy/course/blob/master/intro_to_the_web/theweb.md)

HTTP is a protocol that structure requests and responses over the internet. Clients send requests to servers.

[HTTP](https://github.com/makersacademy/course/blob/master/intro_to_the_web/http.md)

Information passed to a server with a request is called a parameter. For example, a query string contains parameters:

```
http://www.example.com/home?name=Bob&age=21
```

[HTTP parameters](https://github.com/makersacademy/course/blob/master/intro_to_the_web/http_parameters.md)

GET and POST requests - a get request is where you want to get some information, a POST request is where you want to pass data to the server to store on the server.

[HTTP verbs](https://github.com/makersacademy/course/blob/master/intro_to_the_web/http_verbs.md)

---

### Reflection

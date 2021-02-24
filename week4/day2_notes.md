# Week 4, Day 2
## Subtitle

### Links

* [Week outlines](https://github.com/makersacademy/course/blob/master/week_outlines.md)
* [Knowledge Pills](https://github.com/makersacademy/course/blob/master/pills.md)
* [The Escalation Process](https://github.com/makersacademy/course/blob/29a5e4a3c1776d32eda8f3ee55edc1dd124b05ba/pills/escalation_process.md)
* [Feedback form](https://docs.google.com/forms/d/1dr6yUt7M2HJyDEnMoqjuNpew3mUgFQUp79WQbT7wv68/edit)
* [Timetable](https://airtable.com/shr9ia7PTZfhGxXQa/tblU9M74TCpg89oGC)

### Goals for the week/day

[Airtable: Database Web Apps](https://airtable.com/shrGPJMHNfr7p9iAo/tblokmw6yNUO75ge6)

[Reflective Learning](https://github.com/makersacademy/course/blob/master/goals/reflective_learning.md)

[Progress](https://github.com/makersacademy/course/blob/master/goals/progress_insight.md)

[SMART Goals](https://docs.google.com/document/d/1Tcw_8OuOSXArP8Wr7X1jywWDV8NW_LzYmFawUCBYIZ8/edit)

By the end of week 4, all developers should be able to:

* Build a simple web app with a database
* Follow an effective debugging process for database applications
* Explain the basics of how databases work (e.g. tables, SQL, basic relationships between tables)

---

### Notes

#### REST

[Makers pill](https://github.com/makersacademy/course/blob/master/pills/rest.md)

REST stands for Representational State Transfer.

In REST, urls are not just vague descriptions. They relate to a resource (like an object in OOP - a noun that represents something in the real world).

We combine this with HTTP actions, in particular POST, GET, PATCH and DELETE. These map well to Create, Read, Update and Delete (CRUD) so we can have a single URL rather than a number of messy URLs. For example, in bookmark manager, we could have:

* POST/bookmarks
* GET/bookmarks
* PATCH/bookmarks
* DELETE/bookmarks

The controller will manage the actions.

There's more to understand about REST, but that will be in a few weeks time.

#### Introduction to databases

[Makers knowledge pill](https://github.com/makersacademy/course/blob/master/pills/db_relationships.md)

Databases are the storage shelves of the digital world. They are where we store all of our data.

Every database has a DBMS - a database management system.  This structures how we organise and interact with stored data.

There are four fundamental ways we interact with a database:

* __C__ reate
* __R__ ead
* __U__ pdate
* __D__ elete

There are two types of DBMS - relational and non-relational.

_Relational_

Here, the database is organised in tables, made of columns and rows. Columns are categories and each row holds a data entry. We access the data using SQL (Structured Query Language).

They are highly structured, have strict data types and are great for managing complex datasets.

The pattern of how you arrange all your rows, columns and tables is called a schema. In a relational system we have to define it before we can put anything into the database.

_Non-relational_

This is an umbrella term for any kind of DB that isn't strictly relational.

We don't use SQL to talk to the DB.

These systems are more flexible and are less strict with data types.

They are good for getting a database up and running quickly as you don't have to create a schema first.

They are good for deploying data across decentralised distributed networks.

#### Database relationships

A relational database is made of a series of tables, each made of rows and columns (like a spreadsheet).

Rather than have a large table with many columns, instead we can split data up into separate tables that are more cohesive. For example where a DB stores user data, you might have a table for their name(s), and separate table for address/postcode, a separate table for contact details etc. Each row in each table has a unique identifier, so that records in tables can be joined by reference to those unique identifiers.

This lets us create one-to-many relationships, along with many-to many relationships.

It is important to minimise redundancy in the system.

#### SQL Zoo

[Link](https://sqlzoo.net/wiki/SQL_Tutorial)

SQL syntax goes as follows:

SELECT [data/column name] FROM [database/table name] WHERE [condition]

See also the SQL cheat sheet [here](http://www.cheat-sheets.org/sites/sql.su/)




---

### Reflection

text

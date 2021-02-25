# Week 4, Day 4
## Domain Modelling

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

#### Count Sinatra

[Link](https://github.com/tatsiana-makers/count-sinatra-psql)

1. What is the difference in behaviour between this app and one which there is no database?

> The data persists; the counter will not be reset when the website is refreshed.

2. Which of the MVC components interacts with the database?

> The model interacts with the database; in particular, database_connection.rb, which is called on by other classes.

3. What parts of the code run when we run the app in our browser? You could test your assumption by adding p lines and checking that you see the output you expect.

> We start at the root directory, which calls the index.erb view. This page connects to the database by invoking @counter.count, with @counter set to be an instance of the Counter class. #count connects to the database using the DatabaseConnection class, and runs a SELECT query to find the current number in the database. It then returns this number as an integer.

4. What part of the code runs when we click the "Increment" button?

> Clicking on the 'increment' button sends a post request to /increment.
>
> Before /increment is run, @counter is set to be an instance of the Counter class.
>
> This invokes @counter.increment. This method first of all invokes #count which reads the database and returns the number stored within, converting it to an integer. The integer is returned to #increment, which updates the database with the integer + 1.
>
> We are finally redirected to '/', where if we want we can click the increment button again.

5. Can you add a "Decrement" button which decreases the count by 1 each time it is pressed?

> Yes.

6. Can you update the app to display the time that the count was last updated? This value should be stored in the database so that it will be accurately displayed even if the server is restarted.

> Yes. Note - remember there is a test database that needs to be reconfigured!

#### SQL Murder Mystery

[Link](https://mystery.knightlab.com/)

Notes:

* Crime was a murder, and took place in SQL City on Jan 15, 2018

```sql
SELECT *
  FROM crime_scene_report
 WHERE city = 'SQL City'
   AND date = 20180115;
```

* Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".

```sql
SELECT id, name, license_id, MAX(address_number), address_street_name, ssn
  FROM person
 WHERE address_street_name = 'Northwestern Dr';
```

* 14887, Morty Schapiro, 118009, 4919, Northwestern Dr, 111564949

```sql
SELECT id, name, license_id, address_number, address_street_name, ssn
  FROM person
 WHERE address_street_name = 'Franklin Ave'
   AND name LIKE 'Annabel%';
```

* 16371, Annabel Miller, 490173, 103, Franklin Ave, 318771143

```sql
SELECT transcript
  FROM interview
 WHERE person_id = 14887;
```

```sql
SELECT transcript
  FROM interview
 WHERE person_id = 16371;
```

_Morty witness statement_

> I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".

_Annabel witness statement_

> I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.

__Notes so far__

* Murderer is male
* Goes to Get Fit Now gym
* Is a gold member
* Membership no starts with 482
* Drives a car with licence plate containing H42W
* Was in the gym on January 9th

```sql
SELECT count(name)
  FROM get_fit_now_member
 WHERE membership_status = 'gold'
   AND membership_start_date <= 20180109;
```

* We have 54 gold members who were members of the gym on 9th January.

```sql
SELECT name
  FROM person
INNER JOIN drivers_license
    ON person.license_id = drivers_license.id
 WHERE gender = 'male'
   AND plate_number LIKE '%H42W%';
```

* There are two male drivers with a partial plate containing H42W, Tushar Chandra and Jeremy Bowers.

```sql
SELECT name
  FROM get_fit_now_member
INNER JOIN person
    ON get_fit_now_member.person_id = person.id
INNER JOIN drivers_license
    ON person.license_id = drivers_license.id
 WHERE gender = 'male'
   AND plate_number LIKE '%H42W%';
```

* The above query gives us Jeremy Bowers.

```sql
INSERT INTO solution VALUES (1, 'Jeremy Bowers');

        SELECT value FROM solution;
```

> Congrats, you found the murderer! But wait, there's more... If you think you're up for a challenge, try querying the interview transcript of the murderer to find the real villain behind this crime. If you feel especially confident in your SQL skills, try to complete this final step with no more than 2 queries. Use this same INSERT statement with your new suspect to check your answer.

```sql
SELECT transcript
  FROM interview
INNER JOIN person
    ON interview.person_id = person.id
 WHERE name = 'Jeremy Bowers';
```

> I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.

__Known Facts__

* Woman
* Lots of money
* 65" to 67" tall
* Red Hair
* Drives a Tesla Model S
* Went to SQL Symphony Concert 3 times in December 2017.

```sql
SELECT name, annual_income, event_name
  FROM person
INNER JOIN income
    ON person.ssn = income.ssn
INNER JOIN drivers_license
    ON person.license_id = drivers_license.id
INNER JOIN facebook_event_checkin
    ON person.id = facebook_event_checkin.person_id
 WHERE gender = 'female'
   AND hair_color = 'red'
   AND car_make = 'Tesla'
   AND car_model = 'Model S'
   AND height >= 65
   AND height <= 67
   AND count(event_name) = 3;
```

This gives us the following table:

| Name | annual_income | event_name |
| ---- | ------------- | ---------- |
| Miranda Priestly | 310000 | SQL Symphony Concert |
| Miranda Priestly | 310000 | SQL Symphony Concert |
| Miranda Priestly | 310000 | SQL Symphony Concert |

```sql
INSERT INTO solution VALUES (1, 'Miranda Priestly');

        SELECT value FROM solution;
```

> Congrats, you found the brains behind the murder! Everyone in SQL City hails you as the greatest SQL detective of all time. Time to break out the champagne!

#### RESTFUL routes

[Link to article](https://learn.co/lessons/sinatra-restful-routes-readme)

RESTFUL routes make use of HTTP verbs, to enable mapping of those verbs to database CRUD actions. A combination of the verb and the resource (the url) gives the controller the instruction that it needs to respond to a request.

For example:

* GET /articles/4 would be a command to view that article.
* DELETE /articles/4 would be a command to delete the article.

Note that the url is identical, it is only the HTTP verb that has changed.

#### Pair programming

Paired with Laura, working on bookmark manager.

---

### Reflection

text

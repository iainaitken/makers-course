# Feedback

## Week 1

### Boris Bikes

__3 February - paired with Katie__

_What did I do well?_

> Really enjoyed that Iain and learnt so much from you. You're way more advanced with your knowledge and application of it but you brought me along with you and made sure that I was benefitting from the session -  which was really appreciated. You gave clear advice when instructing me as navigator. I also appreciated you suggesting we do the GitHub collaboration session at the start. Enjoyed chatting too - good code/chat balance.

_What could I do better?_

> As an offspring from a Karen I love to complain but it's quite difficult in this instance. You were really brilliant to pair with. If I had to really nitpick I guess when we were tiring towards the end you were slightly racing towards the final answer, but again you did circle round and made sure I understood .

__5 February - paired with Sandy__

_What did I do well?_

> - I like that you pushed me to try things and not assume anything,
>
> - You gave me time to understand the concepts and discuss your understanding of them with me
>
> - You taught me a new RSpec marker (.to change { })
>
> - I really enjoyed pairing with you

_What could I do better?_

> To be honest I want to navigate the way you do, I have nothing to change to it :)

### Airport Challenge

__8 February - Feedback from mentor, Javier__

> You kept the methods clean and clear, not more than 3 lines of code (that’s a rule), perhaps in the refactor you could have the open and close merged into only one method returning a boolean value.
>
> Like you die on the the weather method, you could have and array of the the possible weather and with using .sample() will return a random value instead of making a case statements.
>
> When you have many possible IF statements in one method I will suggest to use an IF-ELSE statements, using only IF could have conflicts as e.g. Two if statements met the conditions in different values, so with a IF-ELSE you can track where your condition met the requirements.
>
> - Like the way you implemented DOUBLES, well done
> - Not sure if you are checking when the weather is stormy, no to take off
> - Not sure if you are testing for the space of the hangar
> - Use described_class for a better adaptable code
>
> Overall I think you code is really neat and your tests are really good, excellent for being your first weekend challenge. I am really impressed about the readme, well explained the situation and you are right, you could have another class that could have the weather only. Delete spaces you don’t need and/or not relevant comments. Excelente!!!

__8 February - Feedback from Rorie__

> - Code was readable
>
> - Code was neat
> - Try to minimise code if possible.

---

## Week 2

### Oystercard

__8 February - Feedback from Rorie__

_What did I do well?_

> You explained your code very well. Each time you made a change you clearly stated why you were doing it and what it will do to improve the code/rspec. As a driver, I really liked how you prompting me to think about why were changing the code rather than passively writing out what you were telling me. Building a good rapport with your partner is something which gets overlooked by a few, but it makes the whole process alot more fun and less formal, which you did very well too.

_What could I do better?_

> I really can't think of anything to be honest, was a great session!

__9 February - Feedback from Joey__

_What did I do well?_

> Very good communication and constantly talking through your thought process so I always knew why you were doing what you were doing. great attention to detail as well.

_What could I do better?_

> to be honest I can't really think of anything. except show the cats more!

__10 February - feedback from Ian__

_What did I do well?_

> You were very patient with me and allowed me to work through to a solution by myself (unless I asked).

_What could I do better?_

> Nada - really enjoyed that.  Perhaps explaining what exactly it is the code that you're writing is going to be expected to do, or how exactly the test will work, before executing it.  Otherwise keep it up, people will come out of pairing sessions with you as a better coder!

__11 February - feedback from Christine__

_What did I do well?_

> Iain did really well in thinking about the bigger picture of what the code is trying to achieve, and subsequently planning what should be written next, how the methods could be extracted and then incorporated into the main class. He was also very patient while I questioned the logic of certain methods and the class we were building.

_What could I do better?_

> In the spirit of TDD, I think we should have stuck to the unit test, red, green, refactor process more. What we seemed to have done may have been the opposite which was code, feature test, unit test. Saying that, I think it has been challenging for us to come up with the appropriate tests for some methods using doubles so we were just doing the best with what we could.

__12 February - feedback from Hannah__

_What did I do well?_

> You were very patient and encouraging, and supported me with reading the error messages more thoroughly from the bottom of the stack trace.

_What could I do better?_

> I think maybe taking the driver seat for a little bit just to give my brain a little bit of a break could have helped, but also it was useful for me to do more of the driving. Not much to give you for this question I'm afraid!

### Takeaway

__Feedback from coach__

> I see an attribute reader and these public methods as achieving equal levels of encapsulation in the class since instance variables are only accessible by the public attribute readers and can't be changed by other classes (since they would only be attribute readers and not accessors). What aspect of encapsulation do you see as being strengthened by returning duplicates of the attributes?

> Really cool to read about your approach to the challenge!

> Something like dishes is a more descriptive name for this instance variable

> Having the check method return either a custom symbol like :unavailable or the Dish instance makes code that calls this method a bit challenging to reason about since anyone who uses this method will have to remember that different types will be returned depending on the dish.
>
> Rather than having one method do both of:
>
> checking if the dish is available on the menu
finding the corresponding Dish instance
we could divide these responsibilities into two methods so that:
>
> returns a symbol such as :available, :unavailable, or :not_on_menu
returns a Dish instance or nil if that dish isn't on the menu

> Nice use of private methods!

> Nice use of dependency injection!

> Nice job isolating these unit tests from the actual Dish, Calculator and Texter classes

> We should also check that add works correctly in the good case scenario that a dish is available and on the menu

__Feedback from Ed__

>- Code was well-considered and logical.
>
>- The decisions I made when planning were well-informed.
>
>- Good use of SRP
>
>- Descriptive words for the variables in rspec
>
>- Code was clean and quite easy to follow.
>
>- Wondered whether there was too much code given there was only 4 user stories?

---

## Week 3

### Battle

__17 February - feedback from Charlie__

_What did I do well?_

> Great communication. I enjoyed going through our paths leading up to makers and a bit about future intentions job/learning wise. I thought the way you explained how each part of the code was working was thorough and useful for understanding each step.

_What could I do better?_

> The webcam audio quality was poor so it would have been nice to have clearer sound but you were aware of that!

__19 February - feedback from Raf__

_What did I do well?_

> Took me through everything step by step, explained everything very clearly, and was also very patient!

_What could I do better?_

> Not much

### RPS

__Feedback from Coach__

> Nice job getting rid of global variables!

> This is a neat way of calculating the result

> Can these lines can be replaces with a default value in the initialize input parameter?
def initialize(name = "Computer")

> The strings 'rock', 'paper', and 'scissors' appear both in this class and in the Calculator class. Rather than having these strings floating around, we could create constants for each of these strings in one place and use that constant in all the places we need that string. This would eliminate the chance that a typo in one of the strings in one of the classes breaks the logic of the game

> Should we also assert that the correct winner is declared on this page?

__Feedback from Mentor, Javi__

> You readme is excellent, you explain the process and instruction on how to run your repo, well done.
>
> Like the structure of you app.rb file, the code looks very clean and not longer than 5 inner lines.
>
> Extra point for the calculator class… that an excellent way to check results.
>
> I think you code is very neat and easy to read.
>
> I will recommend to check  the structure of your erb files, it is the same structure as an HTML

```html
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
</body>
</html>
```

> You can create a test.html file and type “doc” and the enter, should give you and structure go the html file. And the you can copy and paste into the erb files, keep this html test file to check for other tags (that’s what I do)
>
> Inputs tag shouldn’t be within a label tag and inputs are self-closing tags

```html
<label for="name">First name:</label>
 <input type="text" id="name" name="name" />
```

> Text shouldn’t be floating on its own, should be in a p tag, span, etc. as divs are boxes where you can put anything in there your text won’t have its own tag.
>
> You could implement a bit or CSS so you get familiar to it.
>
> Overall I think you code is excellent… 10/10

## Week 4

### Bookmark Manager

__23 February - feedback from Aniruddh__

_What did I do well?_

> You were very fun to hang out with for the pairing session. A good mix of work and chat. Your explanations and pacing were good too.

_What could I do better?_

> I suppose we could have had more frequent breaks as I was getting a little frazzled during the middle. Apart from that, everything else was good!

__24 February - feedback from Jai__

_What did I do well?_

> The session was interactive and we were both able to play around and deepen our understanding.

_What could I do better?_

> Not answered

__25 February - feedback from Laura__

_What did I do well?_

> Navigated well - I really like the way you ask questions rather than just telling the answer.  I felt confident to ask you to explain things when I didn't understand because you come across really non-judgemental and very encouraging which is an excellent quality in a pair partner. Thanks for a great session!

_What could I do better?_

> We probably should've remembered to take more breaks as we only had one break in 3.5 hours

### Chitter

---

## Week 5

Worked on group project (Makers bnb) throughout the week.

### Weekend challenge - bowling

> Hi Iain, Alex A here :)
> 
> I absolutely love your score display, and I think you've done really good work here.
> 
> As I believe you identified yourself, this is a little over-engineered - you didn't need all of these classes. That said, in different circumstances all of them could have been entirely appropriate. I think this additional weight is also really evident in the game class - with fewer classes I think you would also see opportunities in the game class to refactor and simplify it.
>
>You also missed some opportunities in your display class to make things simpler and more readable. That's not major - it's well encapsulated and isolated, but I still think it's worth mentioning.
>
> All in all, this is really good work. You identified the broad issues yourself and that's an important part of your ability to resolve them yourself and write better code in the long run.

Regarding the Bowl class:

> This class seems just to wrap a number. That's something which would be a positive in some languages, but in Ruby I don't think it's really beneficial, and it does make it a little more awkward to work with.
> 
> I'd suggest that this class should either have responsibility for knowing the limits: 0 <= pins <= 10 or you should just use the number of pins directly.

Regarding the Display class:

> This method is hard to follow. I really love the output from this class, and I'd be in favour of keeping the class and the output, but I'd see if you can refactor this method to maybe use an array of frames, and have a simple template* for how you then display a frame (or absent frame). I expect frame 10 would need a special case, but I think you could make that really straightforward.
> 
> *this could be string interpolation, like displayed_frame_pins = "|#{display_pins(frame)}|, "

Regarding the Error class:

> While separating validation is common practice in some places, I don't recommend it personally. Pushing these responsibilities to the user interface or to the places the information is owned (e.g. the bowl class or the frame class) might enable you to handle these more gracefully, rather than raising exceptions.

Regarding the Frame class:

> This class doesn't do very much, and I'd be tempted to merge it with the FrameScore class. This is a scorecard, so I feel the only model we really need for a frame is a model around scoring.

---

## Week 6

__9 March - Feedback from Nico__

_What did I do well?_

> Very methodical approach to each problem which works well deconstructing them and remove the "fear" factor of looking at a too big picture. Also positive attitude in trial and error, instead of just going for one syntax, you try different ones to push your understanding.

_What could I do better?_

> I dont think I got any complaints for you... maybe keeping a better eye on time for breaks (that goes for me too)~~~~

---

## Week 7

__15 March - Feedback from first Review__

[Link to recording of review](https://www.youtube.com/watch?v=k0gG_Hp4Phw.)

_GENERAL FEEDBACK_

> Feedback: Well done with completing your first review session. You have shown really good problem-solving skills and a good familiarity with Ruby. I would just encourage you to consider using a simpler test progression in order to drive the growth of your algorithm and focus a bit less on the implementation details from the beginning and how you assume that you would like the algorithm to work. You could also just try and gather more information about the program from the client in order to have a better overall understanding of how the program might behave.

See pdf for detailed feedback.

---

## Week 8

__26 March - Feedback from second Review__

[Link to recording of review](https://www.youtube.com/watch?v=syewjqPUGGo)

_GENERAL FEEDBACK_

> Feedback: Well done on getting through your second code review. It was great to see you adopting a simpler test progression that drives small and incremental improvements to your system. It was also great to see you asking about edge cases in the system. While you have improved from your last review, I feel that there is still some degree of improvement to be made. Firstly and most importantly, avoid testing edge cases before core functionality. Additionally, I would like to remind you to use Git as part of your process (once it becomes a habit, it will be much easier to remember). Otherwise, good job and I look forward to seeing future improvements.

See pdf for detailed feedback.

---

## Week 9

__2 April - Feedback from third Review__

[Link to recording of review](https://www.youtube.com/watch?v=R5r8I9gm3Pg)

_GENERAL FEEDBACK_

> Feedback: There are some real improvements that you are making in terms of test progression as well as adding Git commits to your process. You taking the time to consider what your next step is going to be. There are, however, times where you take some time contemplating your next step even after voicing out valid approaches. Being confident in your decision making often is a result of having a bit more experience. I would suggest that you practice your TDD process a bit more before booking your next session in order to build up that confidence in your decision making.

See pdf for detailed feedback.

## Post-course

__29 April - Feedback from third Review__

[Link to recording of review](https://www.youtube.com/watch?v=R5r8I9gm3Pg)

_GENERAL FEEDBACK_

> ## Week 9

__2 April - Feedback from third Review__

[Link to recording of review](https://www.youtube.com/watch?v=SOvL1ZoI_bc)

_GENERAL FEEDBACK_

> Feedback: There is a lot of improvement to your process in this review session. You have taken the feedback from previous sessions and applied it to your process quite well. I would just encourage you to practice with similar problems in order to get some experience with what built-in Ruby methods to use for certain types of problems.

See pdf for detailed feedback.
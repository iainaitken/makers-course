# Notes

* Create a local repo, use git as normal, but don't push to github.
* Ask questions:
  * What data will i get?
  * Explore edge cases. 
    * How much data? 
    * How often? 
    * Might there be differences in the data, i.e. more or fewer elements in the array? 
    * Might there be blank elements?
  * What format does the output need to be in different circumstances?
  * Think about the data - if mutable, such as strings, might users provide data that is not correctly formatted? If numbers, do we need to guard against numbers outside a set of boundaries?
* Think about tests before you start testing:
  * What is the smallest thing you can test? 
  * Break the concept down into the smallest possible idea and start with that.
* Build tests incrementally. Start small, hard-code initially and build up the complexity as you build up the program.
* Debug with IRB
* Keep method names relevant to the client's domain - i.e. instead of 'parse' you could have used 'create_report' in the student example.
* Build core functionality before edge cases.
* Broad, not deep - get basic functionality for entire breadth of program before diving deeper.
* REFACTOR
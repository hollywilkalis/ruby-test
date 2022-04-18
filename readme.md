## Support Software Engineer Challenge
### Holly Wilkalis

**About the Project**

For this project I created a program executable from the command line that when given a text file will return a list of the 100 most common three word sequences.

For this project I have used Ruby 3.1.2. The solution.rb file has been commented to include explanation of what each code snippet is doing.

---

**Instructions to Run** 
1. Clone repository to local machine
2. Save any files you want to process to the project folder. (I have also provided three text files you can use for testing: "moby-dick.txt", "loren-ipsum.txt", and "origin-of-species.txt.)
3. From the command line, cd into the project folder.
4. Run command:  `ruby ./solution.rb <file name>`. (At this time, code only supports processing of one file at a time.)
5. Resulting list will be output to terminal.

---

**What I Would Do Next**
- Incorporate support for stdin and multiple files - I'm not super familiar with the use of stdin and just ran out of time.
- Add option of outputting results to a file as well as or instead of to terminal.
- Add option to use a URL as an input source.
- Add option to change the count of entries returned from the current hard coded value of 100 based on user input.
- Refactoring! Some of these choices are pretty inelegant and I'm sure it could be made to be faster/more efficient.

---

**Known Bugs** 
- The regex I used to remove punctuation while preserving contracts needs to be refined.



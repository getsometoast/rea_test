REA Robot Test
==============

Assumptions
-----------
* system takes commands from a text file, runs them through to completion then exits
* system will fail on error if any command in text file is badly formed
* a command with any lowercase characters in it is considered badly formed
* it was also assumed that writing a CLI was out of the scope of this test

Approach
---------
This is the workflow I try to follow when developing software:

* Write a failing acceptance test, commit
* Write enough code to make the acceptance test fail on the expectation, commit
* Write a failing unit test, commit
* Write code to make the test pass, commit
* Refactor, commit
* Repeat until acceptance goes green, commit
* Refactor, commit
* Repeat until all the acceptance criteria is met

Overview
---------
This is the system workflow:

* read input file
* parse input file into list of command objects
* execute each command
* exit

The application class wires up all the dependencies and starts the system.  It reads in the input file,
passes the text to the parser to generate a collection of commands and then passes the commands to the
simulator which executes them.

My Thoughts on the Solution
--------------------
* Application: this class is very smelly - it is a sign that I didn't use proper outside in development and
needed somewhere to wire up all the dependencies
* Robot: I'm not sure if I like the fact that a robot just represents it's state and nothing else in my system
* InputParser: seems like it might be doing more than one thing (the case statement)
* Commands: I do like the separation of concerns here but I also wondered if I could have achieved the same thing
more elegantly by creating mixins like 'Placeable' and 'Moveable' which the robot could have included
* Lack of a CLI: on reflection I wish I'd driven out a CLI using a test framework like Aruba - I initially thought
it would be out of scope but think my solution suffered because of this decision

Running the app
---------------
`bundle install`
`rake install`

`./lib/application_runner.rb #{file_name}`

e.g. `./lib/application_runner.rb happy_path_test_data.txt`

Running the tests
-----------------
`rake`
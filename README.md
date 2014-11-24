REA Robot Test
==============

Assumptions
-----------
* system takes commands from a text file, runs them through to completion then exits
* system will fail on error if any command in text file is badly formed
* a command with any lowercase characters in it is considered badly formed
* it was also assumed that writing a CLI was out of the scope of this test

Running the tests
-----------------
`rake`

Running the app
---------------
`rake install`

`./lib/application_runner.rb #{file_name}`


e.g. `./lib/application_runner.rb happy_path_test_data.txt`

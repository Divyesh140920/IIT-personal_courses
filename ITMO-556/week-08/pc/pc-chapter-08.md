# Podcast Questions - Chapter 08

Watch this short video and answer these three questions relating to the shell script written in the video: [How to write a bash script](https://www.youtube.com/watch?v=F-gskSl4pwQ "youtube video fo how to write a bash script")

* What did Maria write as the first line of Shell script and why did she write it that way?
  * Maria wrote the first line of the shell script as `#!/bin/bash`. This line is known as a shebang or hashbang and is used to specify the interpreter for the script. In this case, it specifies that the script should be interpreted using the Bash shell. It's necessary because it tells the system which program to use to execute the script. 

* In the video, Maria types `NAME=${1?Error: no name given}` in her shell script. Briefly explain what this line means and what happens when `$1` has a value and when $1 doesn't have a value.
  * The line `NAME=${1?Error: no name given}` in Maria's shell script assigns the value of the first command-line argument (represented by `$1`) to the variable `NAME`. The `?` in this context acts as an error message. If `$1` has a value (i.e., a name is provided as the first argument when running the script), the value is assigned to `NAME`. However, if `$1` is empty or not provided, it will generate an error message "Error: no name given." In this way, Maria is handling the case where the user forgets to provide a name as an argument to the script.

* In the video, Maria types `NAME2=${2:-friend}` in her shell script. Briefly explain what this line means and what happens if $2 has a value and when $2 doesn't have a value.
  * The line `NAME2=${2:-friend}` in Maria's shell script assigns the value of the second command-line argument (represented by `$2`) to the variable `NAME2`. If `$2` has a value (i.e., a second name is provided as the second argument when running the script), that value is assigned to `NAME2`. However, if `$2` is empty or not provided, the default value "friend" is used. This allows the script to provide a default value when the user doesn't specify the second name.

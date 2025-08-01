# Lab - Chapter 08

## Lab Objectives

* Explore creating shell scripts  
* Explore the use of positional parameters in shell scripts
* Describe the fundamental use of control structures in shell scripts
* Explore task automation using `cron` for shell scripts

## Lab Outcomes

At the completion of this lab you will further your knowledge of shell scripting and enhance your abilities using Bash shell scripts. Sample code and text files are available in the textbook GitHub repo under `files > Chapter-08 > lab`. You will be writing shell scripts and your deliverable will be the shell scripts that satisfy each files requirements. Copy `names.txt` and `roster.txt` so that they are in the same directories as your shell scripts -- assume path `./`

### Note : Please execute without using sudo since I have used $USER in place of directory path.
**Please find my execution screenshots in images folder.**

## Part 1

1) Create a shell script that will take 3 positional parameters, append each parameter to a file named roster.txt (each of the parameters will be a name), named `l8ex1.sh`    
```bash

#!/bin/bash


# Check if three positional parameters are provided
if [ $# -ne 3 ]; then
	echo "Please enter three parameters: $0 <name1> <name2> <name3>"
	exit 1
fi

# Assign the positional parameters to varibles
name1="$1"
name2="$2"
name3="$3"

# Add the names to the roster.txt file
echo "$name1" >> roster.txt
echo "$name2" >> roster.txt
echo "$name3" >> roster.txt


# print the result
echo "Names appended to roster.txt"
```

2) Create a shell script to cat the content of the roster.txt file into an array named: ROSTERARRAY and echo the 2nd element of the array, named `l8ex2.sh`    

```bash 
#!/bin/bash


# Read the content of roster.txt in ROSTERARRAY
mapfile -t ROSTERARRAY < roster.txt

# Check if there are atleast 2 elements in the array
if [ "${#ROSTERARRAY[@]}" -ge 2 ]; then
	echo "Second element of ROSTERARRAY: ${ROSTERARRAY[1]}"
else
	echo "Not enough elements in the array."
fi
```

3) Create a shell script that redirects the content of roster.txt into an array, uses a forloop to cycle through the array's contents, and then uses the command to make a directory for each name listed in the array in your home directory, echo a message telling the user the path of the directory just created. Final command of the script is to list the content of the home directory to show the success of the script, named `l8ex3.sh`   

```bash
#!/bin/bash


# Read the content of roster.txt in array
mapfile -t ROSTERARRAY < roster.txt

# Define home dir
HOME_DIR=$HOME

# using for loop
for name in "${ROSTERARRAY[@]}"; do
	# Create a dir for each name in home dir
	
	directory_path="$HOME_DIR/$name"

	# Check if dir already exists
	if [ -d "$directory_path" ]; then
		echo "Directory '$name' already exists at $directory_path."
	else
		mkdir "$directory_path"
		echo "Directory '$name' created at $directory_path."
	fi
done

ls -l $HOME_DIR
```

4) Modify the shell script from the previous question to include an `if` statement that checks for the existence of a directory. If the directory exists, echo a message: "Directory $NAME exists". Then add an else clause that if the directory does not exist, create it and echo a message that the new directory and its path have been created, named `l8ex4.sh`   

```bash
#!/bin/bash


echo "Enter the name of the Directory"
read NAME

# Check if the directory already exists
if [ -d "$NAME" ]; then
	echo "Directory $NAME exists."
else
	mkdir "$NAME"
	echo "New directory '$NAME' created at $(pwd)/$NAME."
fi
```

5) Write a WHILE loop that will read the content of the file names.txt, (located in the files > Chapter-08 > lab folder) and create a directory based on the value on the line in the `/tmp` directory (one per users). Include an if statement to detect if the directory already exists, if it does exist, write the duplicate name out to a text file named: `duplicates.txt` located in the `/tmp` directory, named `l8ex5.sh`   

```bash
#!/bin/bash


file_path="/home/$USER/Documents/Linux-text-book-part-1/files/Chapter-08/lab/names.txt"


while IFS= read -r directory_name; do
	if [ -d "/tmp/$directory_name" ]; then
		echo "Directory '$directory_name' already exists. Writing to duplicates.txt"
		echo "$directory_name" >> /tmp/duplicates.txt
	else
		mkdir "/tmp/$directory_name"
		echo "Directory '$directory_name' created in /tmp."
	fi
done < "$file_path"
```

6) Create a directory in ```~``` named ```topsecret```.  In that directory create a file named `xfile.txt`.  Write a shell script to check if that file has executable permission by passing the filename as a positional parameter.  If TRUE print a message.  If FALSE print an error message that the positional parameter name of the file is not executable, named `l8ex6.sh`   

```bash
#!/bin/bash


directory_path=~/topsecret
file_name=xfile.txt

if [ -d "$directory_path" ]; then
	echo "The 'topsecret' directory already exists."
else
	mkdir "$directory_path"
	echo "The 'topsecret' directory has been created."
fi

if [ -e "$directory_path/$file_name" ]; then
	echo "The file '$file_name' already exists in the 'topsecret' directory."
else
	touch "$directory_path/$file_name"
	echo "The file 'file_name' has been created in the 'topsecret' directory"
fi


# Check if the script received a filename as a positional parameter
if [ $# -eq 0 ]; then
	echo "Error: Please provide a filename as a positional parameter."
	exit 1
fi


filename="$1"


if [ -f ~/topsecret/"$filename" ]; then

	if [ -x ~/topsecret/"$filename" ]; then
		echo "The file '$filename' is executable."
	else
		echo "Error : The file '$filename' is not executable."
	fi
else
	echo "Error: The file '$filename' does not exist in ~/topsecret directory."
fi
```
  
7) Write a shell script to check in the `~/topsecret` directory to see if a given file name exists (passed in by positional parameters).  If TRUE print a message else print an error message with the given file name being passed, named `l8ex7.sh`  

```bash
#!/bin/bash


if [ $# -ne 1 ];then
	echo :"Please enter the file_name as parameter: $0 <file_name>"
	exit 1
fi

directory_path=~/topsecret
file_name="$1"

if [ -e "$directory_path/$file_name" ]; then
	echo "File '$file_name' exists in the 'topsecret' directory."
else
	echo "Error: File '$file_name' does not exists in the directory."
fi
```
    
8) Using `awk` and other tools, how would you find which ip caused the most HTTP 404 errors? Take a screenshot of the command and the output.  Use these two files in ```files/Chapter-08/logs```: u_ex150721.log, u_ex151002.log, named `l8ex8.sh`   

```bash
#!/bin/bash


log_directory="/home/$USER/Documents/Linux-text-book-part-1/files/Chapter-08/logs"

cat $log_directory/u_ex150721.log $log_directory/u_ex151002.log

awk'$9 == 404 {print $8}' | sort | uniq -c | sort -rn | head -n 1

```

9) Using `awk` and other tools, how would you capture the top 5 offending IPs? Take a screenshot of the command and the output. Use these two files in ```files/Chapter-08/logs```: u_ex150721.log, u_ex151002.log, , named `l8ex9.sh`     

```bash
#!/bin/bash


log_directory="/home/$USER/Documents/Linux-text-book-part-1/files/Chapter-08/logs"

awk '{print $1}' $log_directory/u_ex150721.log $log_directory/u_ex151002.log | sort | uniq -c | sort -rn | head -n5
```

10) Using `sed`, type the command to find the line **bind-address** located in the mariadb database server config file (you might need to install mariadb-server). The file locations are: Fedora ```/etc/my.cnf.d/mariadb-server.cnf``` and Ubuntu ```/etc/mysql/mariadb.conf.d/50-server.cnf```. Comment out the value, change the IP value to 0.0.0.0, and write the change back to the original file.  Take a screenshot of the output, named `l8ex10.sh`  

```bash
#!/bin/bash


sudo sed -i '/^bind-address/s/^/# /; /bind-address/s/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
```


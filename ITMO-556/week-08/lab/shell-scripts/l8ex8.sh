#!/bin/bash


log_directory="/home/$USER/Documents/Linux-text-book-part-1/files/Chapter-08/logs"

cat $log_directory/u_ex150721.log $log_directory/u_ex151002.log

awk'$9 == 404 {print $8}' | sort | uniq -c | sort -rn | head -n 1
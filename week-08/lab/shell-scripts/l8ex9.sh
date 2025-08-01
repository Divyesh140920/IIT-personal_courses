#!/bin/bash


log_directory="/home/$USER/Documents/Linux-text-book-part-1/files/Chapter-08/logs"

awk '{print $1}' $log_directory/u_ex150721.log $log_directory/u_ex151002.log | sort | uniq -c | sort -rn | head -n5

#!/bin/bash

# Script Name:                  ops 201d8 Ops Challenge 04
# Author:                       David Prutch
# Date of latest revision:      04/27/2023
# Purpose:                      Learning to use Arrays in bash

# Declaration of variables
#Create four directories: dir1, dir2, dir3, dir4
dir1="dave_dir"
dir2="mike_dir"
dir3="rob_dir"
dir4="chris_dir"
file1="dave.txt"
file2="mike.txt"
file3="rob.txt"
file4="chris.txt"
#array
directory_array=($dir1 $dir2 $dir3 $dir4)

# Declaration of functions



#append to array: array_name+=(article)

# Main
#Put the names of the four directories in an array
mkdir $dir1
mkdir $dir2
mkdir $dir3
mkdir $dir4

#Reference the array variable to create a new .txt file in each directory
touch "${directory_array[0]}/$file1"
touch "${directory_array[1]}/$file2"
touch "${directory_array[2]}/$file3"
touch "${directory_array[3]}/$file4"

# END
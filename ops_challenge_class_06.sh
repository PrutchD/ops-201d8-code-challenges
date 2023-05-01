#!/bin/bash

# Script Name:                  ops 201d8 Ops Challenge 06
# Author:                       David Prutch
# Date of latest revision:      05/01/2023
# Purpose:                      Learning Conditionals - using a loop and an array 

# Declaration of variables
# Create a script that detects if a file or directory exists, then creates it if it does not exist
# array of file names
file_arr=("file1.txt" "file2.txt" "file3.txt" "file4.txt")
dir1=dir1
# Declaration of functions
# function will create a directorry (dir1) then iterate over the array of file names creating any file from the array that does not exist
arr_loop(){
    # make the directory
    mkdir $dir1
    # move into the directory
    cd $dir1
    #iterate over array creating files as needed returning info as to file status (already exists or created)
    for file in "${file_arr[@]}";
    do 
        if [ -e $file ]; 
        then
            echo "this file already exists"
        else
            touch "${file[@]}"
            echo "${file[@]} created"
        fi
    done
    cd ..
}

# This function will allow the derectory to be deleted
del_dir1(){
    #ask user for deletion permission
    echo "Do you want to delete this Directory and all of its contents (y/n)?"
    read ans
    if [ $ans == "y" ];
    then
        #removes the directory and all sub files
        rm -r $dir1
        echo "dir1 has been deleted"
    fi
}

# Main
arr_loop
del_dir1


# End
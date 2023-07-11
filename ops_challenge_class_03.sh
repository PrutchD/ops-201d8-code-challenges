#!/bin/bash

# Script Name:                  ops 201d8 Ops Challenge 03
# Author:                       David Prutch
# Date of latest revision:      04/26/2023
# Purpose:                      Create and Use a function 

# Declaration of variables
# Stretch Goal setting Global Variables
var1="Does it work"
var2="yes it does"

# Declaration of functions
# Write a function , followed by the text .
login_history(){
# print the login history of users on this computer 
# command last shows system login history -a calls for all
last -a
# Print “This is the login history”
echo “This is the login history”
}

# Stretch goal function using global variables
playing_around(){
echo $var1
echo $var2
}

# Main
# call that function three times.
# just use function name to call the function
login_history
login_history
login_history

# Stretch Goal calling the function
playing_around

# END
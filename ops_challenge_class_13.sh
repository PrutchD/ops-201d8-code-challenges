#!/bin/bash

# Script Name:                  ops 201d8 Ops Challenge 13
# Author:                       David Prutch
# Date of latest revision:      05/10/2023
# Purpose:                      Domain Analyzer using whodis, dig, host and nslookup commands

# Declaration of variables
file="domain_analysis.txt"
# Declaration of functions
analysis_to_file(){
    # Make a text file to store all retrieved data
    touch $file
    # whois section header
    echo "whois $ans data" >> $file
    # Run whois against the user input string.
    whois $ans >> $file
    # dig section header
    echo "dig $ans data" >> $file
    # Run dig against the user input string.
    dig $ans >> $file
    # host section header
    echo "host $ans data" >> $file
    # Run host against the user input string.
    host $ans >> $file
    # nslookup section header
    echo "nslookup $ans data" >> $file
    # Run nslookup against the user input string.
    nslookup $ans >> $file
}

# Main


# Take a user input string. Presumably the string is a domain name such as Google.com.
echo "Please enter the domain name you would like to analyze"
read ans

analysis_to_file

# End
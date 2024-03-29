#!/bin/bash

# Script Name:                  ops 201d8 Ops Challenge 07
# Author:                       David Prutch
# Date of latest revision:      05/02/2023
# Purpose:                      Display specific System information using lshow command

# Declaration of variables
# Create arrays to store each of the specif outputs desired
# CPU data
cpu_arr=("*-cpu" "product" "vendor" "physical id" "bus info" "width")
# RAM data 
ram_arr=("*-memory" "description" "physical id" "size")
# Declaration of functions
# Return cpu data using cpu_arr
cpu(){ 
    echo "CPU" 
    # iterate through array   
    for i in "${cpu_arr[@]}";
    do
        # pulls cpu data | grep pulls specified data from cpu data from cpu+arr
        lshw -C cpu | grep "$i"
    done
}
# Return memory data using ram_arr
ram(){
    echo "RAM"
    # iterate through array 
    for i in "${ram_arr[@]}";
    do
        # pulls memory data | -v omits unneccessary data related to firmware | pulls specific data from ram_arr 
        lshw -C memory | grep -v "BIOS" | grep -v "0" | grep -v "KiB" | grep "$i"
    done
}

# Main
echo "Host Computer Name"
# get computer name
hostname
# Call Functions
cpu
ram
echo "Display Adapter"
# pulls display data | -v omits unwanted data
lshw -C display | grep -v "logical name" | grep -v "version"
echo "Network Adapter"
# pulls network adapter data
lshw -C network
# End
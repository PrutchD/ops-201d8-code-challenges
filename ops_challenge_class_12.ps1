# Script Name:                  ops 201d8 Ops Challenge 12
# Author:                       David Prutch
# Date of latest revision:      05/09/2023
# Purpose:                      This script will create a file (network_report.txt) write all all IP configuration data to the file 
#                               then pull the IPv4 data from the file and display in terminal

# Declaration of Variables
$file = "network_report.txt"
$path = "$home\Desktop"

# Declaration of Functions
function Network-Report{
    # Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
    ipconfig |Out-File $path\$file
    # Use Select-String to search network_report.txt and return only the IP version 4 address.
    Select-String $path\$file -Pattern "IPv4"
    # Remove the network_report.txt when you are finished searching it.
    Remove-Item $path\$file

}

# Main
# Calls Network Report Function
Network-Report

# End
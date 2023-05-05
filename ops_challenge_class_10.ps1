# Script Name:                  ops 201d8 Ops Challenge 10
# Author:                       David Prutch
# Date of latest revision:      05/05/2023
# Purpose:                      Write a set of Powershell commands that fetch info about running processes, open processes, and close processes.

# This entire script can be run all at once. It will get the process information open Microsoft Edge from the file location
# Wait 10 seconds then close Microsoft Edge

# Main

# This will display all the running processes on this system - can be filtered by Id Name etc...
Get-Process

# Filter Example filtering by Name of process
Get-Process -Name winLogon

# This will open the selected process - using msedge for this example because it should be on all virtual machines
Start-Process -FilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"

# This commandlet will pause the commands for 10 seconds to let edge load before the last commandlet closes the process
Start-Sleep -Seconds 10

# This process will close msedge by referencing the process name after the 10 second sleep time
Stop-Process -Name msedge

# End
# Script Name:                  ops 201d8 Ops Challenge 10
# Author:                       David Prutch
# Date of latest revision:      05/05/2023
# Purpose:                      Write a set of Powershell commands that fetch info about running processes, open processes, and close processes.

# Main

# This will display all the running processes on this system sorted by CPU Descending order- can be filtered by Id Name etc...
Get-Process | Sort-Object CPU Descending

# This will display all the running processes on this system sorted by ID Descending order
Get-Process | Sort-Object ID Descending

# This will print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Select-Object -First 5 | Sort-Object WorkingSet64 -Descending

# This will open the selected process - using msedge for this example because it should be on all virtual machines
Start-Process -FilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"

# This process will close msedge by referencing the process name after the 10 second sleep time
Stop-Process -Name msedge

# Using a for loop start notepad app 10 times
for ($i = 1 ; $i -le 10 ; $i++) {
    Start-Process notepad
}

# Stops notepad app
Stop-Process -Name "Notepad"

# Stops process by ID number ( I selected ID # 5424) need to select a process that won't disable the system.
Stop-Process -ID 5424
# End
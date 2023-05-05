# Script Name:                  ops 201d8 Ops Challenge 09
# Author:                       David Prutch
# Date of latest revision:      05/04/2023
# Purpose:                      Write a set of Powershell commands that fetch useful System event logs.

# Lots of notes in this one because this is my first dive into Powershell and I want to document what each step does for reference.

# Main
# This Command will Output all events from the System event log that occurred in the last 24 hours to a file on your 
# desktop named last_24.txt.
# Get-EventLog -LogName System pulls the system Logs.
# -After() means get all logs after the date in the parenthesis, (Get-Date) pulls the current date.
# .AddDays() adds days to the selected date (-1) actually goes back 1 day (24hrs) from the Get-Date value.
# After the | Out-File writes the output to a file followed by the pathending with the file name .
Get-EventLog -LogName System -After(Get-Date).AddDays(-1) | Out-File $home\Desktop\SysLogLast24.txt

# This Command will Output all “error” type events from the System event log to a file on your desktop named errors.txt.
# Get-EventLog -LogName System pulls the system Logs.
# -EntryType Error filters by entry type. Error logs for this case.
# After the | Out-File writes the output to a file followed by the pathending with the file name.
Get-EventLog -LogName System -EntryType Error | Out-File $home\Desktop\SysErrLog.txt

# This Command will Print to the screen all events with ID of 16 from the System event log. 
# desktop named last_24.txt.
# Get-EventLog -LogName System pulls the system Logs
# -InstanceID fiters logs by instance ID. 16 is the selected instance ID for this case.
Get-EventLog -LogName System -InstanceID 16

# This Command will Print to the screen the most recent 20 entries from the System event log.
# Get-EventLog -LogName System pulls the system Logs.
# -Newest limits the retreival to the selected value beginning with the latest entries. 20 Entries for this case.
Get-EventLog -LogName System -Newest 20

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure 
# that the full lines are displayed (get rid of the … and show the entire text).
# Get-EventLog -LogName System pulls the system Logs.
# -Newest limits the retreival to the selected value beginning with the latest entries. 500 Entries for this case.
# After the | Format-Table lets you customize the table of the output, you can specify what columns you want to view if you wish ( message, InstanceID, etc...)
# The "*" is a wildcard to indicate all fields in the table.
# -wrap wraps all fields to show all data rather than cutting it off and displaying "..." at the end of a line.
Get-EventLog -LogName System -Newest 500 | Format-Table * -wrap

# End
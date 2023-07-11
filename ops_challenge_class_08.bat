@REM Script Name:                  ops 201d8 Ops Challenge 08
@REM Author:                       David Prutch
@REM Date of latest revision:      05/03/2023
@REM Purpose:                      .bat script to save project filed to backup drive
@REM                                Also adds a log of the backup to the backup drive files
@REM                                required a task to be scheduled in Windows Task Scheduler to perform operation at EOD.

@REM Main
robocopy "C:\Users\j.thompson\Desktop\My Project Files" "E:\My Project Files" /log:"E:\My project Files\backuplog.txt"
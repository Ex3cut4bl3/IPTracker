# Ex3cut4bl3 IP Tracking Powershell Utility

This tool provides the user information about any given IP Address that is pingable on the World Wide Web.

There is a validation script that runs at the start of the program to ensure that you are running it in Administrator.

Simply run the script as Administrator or open a Powershell Command Line in Administrator and run the script through the terminal.

Change Directory to Repository:
```
cd [Location of the downloaded file]\IPTracker
```
Set Execution Policy to Unrestricted
```
Set-ExecutionPolicy Unrestricted
```
Run The Script
```
.\Tracker.ps1
```
## Overview

- Information Provided:
  - Hostname
  - City
  - Country
  - Location (Lat,Lon)
  - Postcode
  - Region
  - Timezone
- Available Commands:
  - help
  - clear
  - exit
  - view-transcript

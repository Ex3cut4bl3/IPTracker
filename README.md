# Ex3cut4bl3 IP Tracking Powershell Utility

[![made-with-powershell](https://img.shields.io/badge/PowerShell-1f425f?logo=Powershell)](https://microsoft.com/PowerShell)

This tool provides the user information about any given IP Address that is pingable on the World Wide Web.
There is a validation script that runs at the start of the program to ensure that you are running the program in Administrator.


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

## Issues

**Note: Any problems with the code please raise an issue. Furthermore I am currently working on developing the program to be more compatible with Linux fixing components like voiding the run as Administrator when on a Linux system and the View-Transcript protocol to run in a native text editor.**

# Ex3cut4bl3 IP Tracking Powershell Utility

[![made-with-powershell](https://img.shields.io/badge/PowerShell-1f425f?logo=Powershell)](https://microsoft.com/PowerShell)

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

## Powershell 7 Installation

**Winget (Windows Package Manager)**
```
winget install --id Microsoft.Powershell --source winget
```
**Through Executable or MSI package from the Microsoft Website**
```
https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?WT.mc_id=THOMASMAURER-blog-thmaure&view=powershell-7.3&viewFallbackFrom=powershell-7
```

## Issues

**Any problems with the code please raise an issue. Furthermore I am currently working on developing the program to be more compatible with Linux fixing components like voiding the run as Administrator when on a Linux system and the View-Transcript protocol to run in a native text editor. Furthermore this code was created with Windows Powershell 7 (Core) in mind, therefore any earlier versions of Powershell are subject to issues and might not work properly.**

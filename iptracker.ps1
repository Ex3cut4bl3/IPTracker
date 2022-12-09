<# 
.NOTES
    Author:         Ex3cut4bl3
    GitHub:         https://github.com/Ex3cut4bl3
    Version:        ID_001
#>

# Validating that the program is running as Administrator.
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "-" -ForegroundColor Red -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "Please Run This As Administrator."
    Write-Host ""
    exit 0
}

# Tests to see if the log file exists, if so deletes the previous log file and creates a new one.
if (!(Test-Path -Path "C:\Logs")) {
    Start-Transcript -Path "C:\Logs\ex3log.log"
} else {
    Remove-Item -Path "C:\Logs\ex3log.log"
    Start-Transcript -Path "C:\Logs\ex3log.log"
    Clear-Host
}

while ($true) {
    try {
        Write-Host "> " -NoNewline
        $iptolocate = $Host.UI.ReadLine()
            if ($iptolocate -eq "clear") {
                Clear-Host
                
            } elseif ($iptolocate -eq "exit") {
                exit 0

            } elseif ($iptolocate -eq "") {

            } elseif ($iptolocate -eq "view-transcript") {
                Start-Process notepad.exe "C:\Logs\ex3log.log"

            } elseif ($iptolocate -eq "help") {
                # Help Menu
                Write-Host ""
                Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "*" -ForegroundColor Blue -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "Information:"
                Write-Host ""
                Write-Host "    Usage: Enter IP Address To Locate. Example <8.8.8.8> - Google's DNS."
                Write-Host "           help: List of Commands Available"
                Write-Host "           clear: Clears the screen"
                Write-Host "           exit: Exits the Program. Reason Code 0"
                Write-Host "           view-transcript: View transcript (log) file with notepad."
                Write-Host ""
                
            } else {
                # IP Address Information
                Write-Host ""
                Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "*" -ForegroundColor Blue -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host (curl -s ipinfo.io/$iptolocate/org) -ForegroundColor DarkYellow
                Write-Host ""
                Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "+" -ForegroundColor Green -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "IP:" (curl -s ipinfo.io/$iptolocate/ip)
                Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "+" -ForegroundColor Green -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "Hostname:" (curl -s ipinfo.io/$iptolocate/hostname)
                Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "+" -ForegroundColor Green -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "City:" (curl -s ipinfo.io/$iptolocate/city)
                Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "+" -ForegroundColor Green -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "Country:" (curl -s ipinfo.io/$iptolocate/country)
                Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "+" -ForegroundColor Green -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "Location:" (curl -s ipinfo.io/$iptolocate/loc)
                Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "+" -ForegroundColor Green -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "Postcode:" (curl -s ipinfo.io/$iptolocate/postal)
                Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "+" -ForegroundColor Green -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "Region:" (curl -s ipinfo.io/$iptolocate/region)
                Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "+" -ForegroundColor Green -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "Timezone:" (curl -s ipinfo.io/$iptolocate/timezone)
                Write-Host ""
            }

    } catch {
        # Catches any errors throughout the code.
        Write-Host ""
        Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "!" -ForegroundColor Red -NoNewline; Write-Host "] " -ForegroundColor White -NoNewline; Write-Host "Error Detcted! Line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
        exit 1
    }
}
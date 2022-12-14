    <# 
    .NOTES
        Author:         Ex3cut4bl3
        GitHub:         https://github.com/Ex3cut4bl3
        Version:        ID_004
    #>

    Clear-Host

    while ($true) {
        try {
            Write-Host "[" -ForegroundColor White -NoNewline; Write-Host "OS" -ForegroundColor Blue -NoNewline; Write-Host "] " -NoNewline; Write-Host ($([System.Environment]::OSVersion.Platform)) -NoNewline; Write-Host " > " -NoNewline
            $iptolocate = $Host.UI.ReadLine()
                if ($iptolocate -eq "clear") {
                    Clear-Host
                } elseif ($iptolocate -eq "exit") {
                    exit 0
                } elseif ($iptolocate -eq "") {
                } elseif ($iptolocate -eq "help") {
                    # Help Menu
                    Write-Host ""
                    Write-Host "    Usage: Enter IP Address To Locate. Example <8.8.8.8> - Google's DNS."
                    Write-Host ""
                    Write-Host "           help: List of Commands Available"
                    Write-Host "           clear: Clears the screen"
                    Write-Host "           exit: Exits the Program. Reason Code 0"
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

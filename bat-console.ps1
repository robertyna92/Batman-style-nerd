#BOOT
Clear-Host
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$Yellow = [ConsoleColor]::Yellow
[console]::beep(800,200)
Start-Sleep -Milliseconds 100
[console]::beep(600,200)
Start-Sleep -Milliseconds 100
[console]::beep(1000,300)


Write-Host ""
Write-Host "Initializing Batcave Recovery Systems..." 
Write-Host ""
Write-Host "Loading Gotham Recovery Protocol - 0%"
Start-Sleep -Seconds 2
Write-Host "Loading Gotham Recovery Protocol - 25%"
Start-Sleep -Seconds 2
Write-Host "Loading Gotham Recovery Protocol - 50%"
Start-Sleep -Seconds 2
Write-Host "Loading Gotham Recovery Protocol - 75%"
Start-Sleep -Seconds 2
Write-Host "Loading Gotham Recovery Protocol - 100%"
Write-Host ""

Write-Host "                      *     *       *    * " -ForegroundColor $Yellow   
Write-Host "                   ***      **     **     *** " -ForegroundColor $Yellow  
Write-Host "                *****       *********      *****  " -ForegroundColor $Yellow  
Write-Host "             ********       *********       ********  " -ForegroundColor $Yellow  
Write-Host "           **********       *********       **********  " -ForegroundColor $Yellow 
Write-Host "         **************    ***********    **************  " -ForegroundColor $Yellow 
Write-Host "        *************************************************  " -ForegroundColor $Yellow
Write-Host "       ***************************************************  " -ForegroundColor $Yellow
Write-Host "       ***************************************************  " -ForegroundColor $Yellow
Write-Host "       ***************************************************  " -ForegroundColor $Yellow
Write-Host "       ***************************************************  " -ForegroundColor $Yellow 
Write-Host "        *******      ****  ***********  ****      *******  " -ForegroundColor $Yellow
Write-Host "         *****        *      *******      *        ***** " -ForegroundColor $Yellow 
Write-Host "           ****               *****               ****   " -ForegroundColor $Yellow
Write-Host "             **                ***                **  " -ForegroundColor $Yellow  
Write-Host "               *                *                *  " -ForegroundColor $Yellow 

Write-Host "             ********                         *******  " -ForegroundColor White
Write-Host "                *********************************  " -ForegroundColor White
Write-Host "                     ***********************  " -ForegroundColor White
Write-Host ""   
Write-Host "Welcome, Dark Knight. Batcave Recovery Systems are now online." -ForegroundColor White
Write-Host ""
Write-Host "Available commands:"
Write-Host "status -> System recovery status"
Write-Host "alfred -> Assistant AI messages"
Write-Host "scan -> Gotham scan system"
Write-Host "help -> Show this list"
Write-Host "exit -> Shutdown system"

$status = "true"
$statusCounter = 0
$statusAlfred = 0
$statusScan = 0

function Invoke-RandomEvent {
    if (Get-Random -Minimum 1 -Maximum 100 -le 10)
    {
        Write-Host "System note: minor fluctuation detected in Gotham grid."
    }
}

#LOOP
WHILE ($status -eq "true")
{
    $inputcommand = Read-Host "BatConsole>"
    if($inputcommand -notin @("status","alfred","scan","help","exit"))
    {
        Write-Host "Please enter a valid command. Type 'help' for a list of commands."
        continue
    }
    if($inputcommand -eq "status"){
    
        switch($statusCounter)
        {
            0 { Write-Host "Monitoring active: no anomalies detected." }
            1 { Write-Host "Gotham is quiet. Too quiet." }
            2 { Write-Host "Everything is under control… mostly." }
            default { Write-Host "You really like checking this, don’t you?." }
        }
        $statusCounter++
        if($statusCounter -gt 3) { $statusCounter = 3 }
        Invoke-RandomEvent
    }

    if($inputcommand -eq "alfred")
    {
        switch($statusAlfred)
        {
            0 { Write-Host "The situation is under control, as always." }
            1 { Write-Host "I have prepared your Batmobile for any emergency, sir." }
            2 { Write-Host "I have also updated the Batcomputer with the latest crime data." }
            default { Write-Host "I'am always here to assist you, sir. Your safety is my priority." }
        }
        $statusAlfred++
        if($statusAlfred -gt 3) { $statusAlfred = 3 }
        Invoke-RandomEvent
    }

    if($inputcommand -eq "scan")
    {
        switch($statusScan)
        {
            0 { Write-Host "Scanning Gotham… try not to move the city." }
            1 { Write-Host "Initializing surveillance… please behave, Gotham." }
            2 { Write-Host "No activity. Even criminals are taking a day off." }
            default { Write-Host "I admire your dedication to finding problems that do not exist." }
        }
        $statusScan++
        if($statusScan -gt 3) { $statusScan = 3 }
        Invoke-RandomEvent
    }     

    # ---------------- HELP ----------------
    elseif($inputcommand -eq "help")
    {
        Write-Host "Available commands:"
        Write-Host "status -> System recovery status"
        Write-Host "alfred -> Assistant AI messages"
        Write-Host "scan -> Gotham scan system"
        Write-Host "help -> Show this list"
        Write-Host "exit -> Shutdown system"
    }
   
    # ---------------- EXIT ----------------
    elseif($inputcommand -eq "exit")
    {
        Write-Host ""
        Write-Host "SYSTEM SHUTDOWN INITIATED..." -ForegroundColor DarkYellow
        Start-Sleep -Seconds 1

        Write-Host "Disconnecting from Gotham network..." 
        Start-Sleep -Seconds 1

        Write-Host "Saving last session..."
        Start-Sleep -Seconds 1

        Write-Host ""
        Write-Host "Even in the darkest nights..." -ForegroundColor White
        Start-Sleep -Seconds 2

        Write-Host "The Batcave is never truly offline." -ForegroundColor White
        Start-Sleep -Seconds 2

        Write-Host ""
        Write-Host "Goodbye, Dark Knight." -ForegroundColor DarkYellow
        Write-Host "T.v.b 🦇" -ForegroundColor Red
        Write-Host "R"
        $status = "false"
        break     
    }
}





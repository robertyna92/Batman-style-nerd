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

$status = $true
$statusCounter = 0
$statusAlfred = 0
$statusScan = 0

#FUNCTIONS
function Show-BatLogo {

    Write-Host "                      *     *       *     * " -ForegroundColor Yellow   
    Write-Host "                   ***      **     **      *** " -ForegroundColor Yellow  
    Write-Host "                *****       *********       *****  " -ForegroundColor Yellow  
    Write-Host "             ********       *********       ********  " -ForegroundColor Yellow  
    Write-Host "           **********       *********       **********  " -ForegroundColor Yellow 
    Write-Host "         **************    ***********    **************  " -ForegroundColor Yellow 
    Write-Host "        *************************************************  " -ForegroundColor Yellow
    Write-Host "       ***************************************************  " -ForegroundColor Yellow
    Write-Host "       ***************************************************  " -ForegroundColor Yellow
    Write-Host "       ***************************************************  " -ForegroundColor Yellow
    Write-Host "       ***************************************************  " -ForegroundColor Yellow 
    Write-Host "        *******      ****  ***********  ****      *******  " -ForegroundColor Yellow
    Write-Host "         *****        *      *******      *        ***** " -ForegroundColor Yellow 
    Write-Host "           ****               *****               ****   " -ForegroundColor Yellow
    Write-Host "             **                ***                **  " -ForegroundColor Yellow  
    Write-Host "               *                *                *  " -ForegroundColor Yellow 

    Write-Host ""
}

function Show-BatMenu {
    
    Clear-Host
    
    Show-BatLogo

    Write-Host ""
    Write-Host "Welcome, Dark Knight. Batcave Recovery Systems are now online."
    Write-Host ""
    
    Write-Host "Available commands:"
    Write-Host "status -> System recovery status"
    Write-Host "alfred -> Assistant AI messages"
    Write-Host "scan -> Gotham scan system"
    Write-Host "quiz -> Batman knowledge test"
    Write-Host "help -> Show this list"
    Write-Host "exit -> Shutdown system"
    
    Write-Host ""
}

Show-BatMenu


function Invoke-RandomEvent {
    if ((Get-Random -Minimum 1 -Maximum 100) -le 10)
    {
        Write-Host "System note: minor fluctuation detected in Gotham grid."
    }
}

function Start-BatQuiz {

    Clear-Host
    Write-Host ""
    Write-Host "=== BATMAN KNOWLEDGE TEST ===" -ForegroundColor Yellow
    Write-Host ""

    $score = 0

    $questions = @(
        @{
            question = "What is Batman's real name?"
            options = @("a) Clark Kent", "b) Bruce Wayne", "c) Tony Stark")
            answer = "b"
        },
        @{
            question = "What city does Batman protect?"
            options = @("a) Metropolis", "b) Star City", "c) Gotham")
            answer = "c"
        },
        @{
            question = "Who is Batman's loyal butler?"
            options = @("a) Alfred", "b) Jarvis", "c) Penguin")
            answer = "a"
        },
        @{
            question = "What is the name of Batman's car?"
            options = @("a) Batmobile", "b) Batcar", "c) Darkmobile")
            answer = "a"
        },
        @{
            question = "Who is Batman's arch-enemy?"
            options = @("a) Joker", "b) Thanos", "c) Loki")
            answer = "a"
        },
        @{
            question = "What is Batman afraid of?"
            options = @("a) Snakes", "b) Bats", "c) Nothing")
            answer = "b"
        },
        @{
            question = "What is Batman's secret base called?"
            options = @("a) Batcave", "b) Batroom", "c) Batlab")
            answer = "a"
        },
        @{
            question = "Who trained Batman?"
            options = @("a) Ra's al Ghul", "b) Odin", "c) Nick Fury")
            answer = "a"
        },
        @{
            question = "What signal calls Batman?"
            options = @("a) Batlight", "b) Bat-Signal", "c) Dark-Signal")
            answer = "b"
        },
        @{
            question = "What does Batman refuse to use?"
            options = @("a) Cars", "b) Guns", "c) Technology")
            answer = "b"
        },
        @{
            question = "Who is the true hero of this office?"
            options = @("a) Batman", "b) Alfred", "c) GSLF")
            answer = "c"
        }
    )

    $questions = $questions | Get-Random -Count $questions.Count

    $qNumber = 1

    foreach ($q in $questions) {

        Write-Host ""
        Write-Host "$qNumber) $($q.question)"

        foreach ($opt in $q.options) {
            Write-Host $opt
        }

        $userAnswer = Read-Host "Your answer"

        if ($userAnswer -eq $q.answer) {
            Write-Host "Correct!" -ForegroundColor Green
            $score++
        }
        else {
            Write-Host "Wrong!" -ForegroundColor Red
        }

        $qNumber++
    }

    Write-Host ""
    Write-Host "Quiz completed!" -ForegroundColor Yellow
    Write-Host "Your score: $score / 10"

    if ($score -eq 10) {
        Write-Host "Perfect score. Gotham is proud of you." -ForegroundColor Green
    }
    elseif ($score -ge 7) {
        Write-Host "Excellent. Alfred approves." -ForegroundColor Yellow
    }
    elseif ($score -ge 5) {
        Write-Host "Not bad, but training continues." -ForegroundColor Cyan
    }
    else {
        Write-Host "Back to the Batcave for more study." -ForegroundColor Red
    }

    Write-Host ""
    Read-Host "Press ENTER to return to BatConsole"

    Clear-Host

    Show-BatMenu
}

#LOOP
WHILE ($status -eq $true)
{
    $inputcommand = Read-Host "BatConsole>"
    if($inputcommand -notin @("status","alfred","scan","quiz","help","exit"))
    {
        Write-Host "Please enter a valid command. Type 'help' for a list of commands."
        continue
    }
    if($inputcommand -eq "status"){
    
        switch($statusCounter)
        {
            0 { Write-Host "Monitoring active: no anomalies detected." }
            1 { Write-Host "Gotham is quiet. Too quiet." }
            2 { Write-Host "Everything is under control... mostly." }
            default { Write-Host "You really like checking this, don't you?." }
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
            0 { Write-Host "Scanning Gotham... try not to move the city." }
            1 { Write-Host "Initializing surveillance... please behave, Gotham." }
            2 { Write-Host "No activity. Even criminals are taking a day off." }
            default { Write-Host "I admire your dedication to finding problems that do not exist." }
        }
        $statusScan++
        if($statusScan -gt 3) { $statusScan = 3 }
        Invoke-RandomEvent
    }  
    
    if($inputcommand -eq "quiz")
    {
        Start-BatQuiz
    }

    # ---------------- HELP ----------------
    elseif($inputcommand -eq "help")
    {
         Write-Host ""
    Write-Host "=== BATCOMPUTER COMMAND MANUAL ===" -ForegroundColor Yellow
    Write-Host ""

    Write-Host "status" -ForegroundColor Cyan
    Write-Host "   Check current Gotham system stability."
    Write-Host "   Use this command multiple times to monitor system behavior."
    Write-Host ""

    Write-Host "alfred" -ForegroundColor Cyan
    Write-Host "   Receive advisory messages from Alfred."
    Write-Host "   Alfred may provide operational updates or witty remarks."
    Write-Host ""

    Write-Host "scan" -ForegroundColor Cyan
    Write-Host "   Perform a city-wide surveillance scan."
    Write-Host "   Use this command to detect unusual Gotham activity."
    Write-Host ""

    Write-Host "quiz" -ForegroundColor Cyan
    Write-Host "   Launch the Batman knowledge test."
    Write-Host "   Answer the questions and prove your loyalty to Gotham."
    Write-Host ""

    Write-Host "help" -ForegroundColor Cyan
    Write-Host "   Display this command manual."
    Write-Host ""

    Write-Host "exit" -ForegroundColor Cyan
    Write-Host "   Shutdown BatComputer systems safely."
    Write-Host ""

    Write-Host "Tip: Commands are not case sensitive." -ForegroundColor DarkGray
    Write-Host ""
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
        $status = $false
        break     
    }
}





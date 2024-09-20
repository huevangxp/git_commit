@echo off
:start
REM Get the current date and time
set CURRENT_TIME=%DATE% %TIME%

REM Add all files to staging
git add .

REM Commit with the current timestamp as the message
git commit -m "Auto commit at %CURRENT_TIME%"

REM Push changes to the repository
git push

REM Wait for 20 seconds before the next loop
timeout /t 20

REM Go back to the start to repeat the process
goto start

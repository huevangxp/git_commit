


@echo off
:start
:: Format the date and time
for /F "tokens=1-4 delims=/:. " %%a in ("%TIME%") do (
    set HOUR=%%a
    set MINUTE=%%b
    set SECOND=%%c
)
set CURRENT_TIME=%DATE% %HOUR%-%MINUTE%-%SECOND%

:: Git operations
git add .
git commit -m "commit %CURRENT_TIME%"
git push

:: Wait for 20 seconds before repeating
timeout /t 20

:: Go back to start
goto start
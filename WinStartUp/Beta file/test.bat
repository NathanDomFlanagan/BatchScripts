@echo off

:START
cls
echo Choose a category:
echo 1. Browsing
echo 2. Coding
echo 3. Discord
echo 4. ADB Commands
set /p CATEGORY=Enter the number corresponding to your category: 

if "%CATEGORY%"=="1" (
    call :LaunchBrowsingApps
) else if "%CATEGORY%"=="2" (
    call :LaunchCodingApps
) else if "%CATEGORY%"=="3" (
    call :LaunchDiscord
) else if "%CATEGORY%"=="4" (
    call :LaunchADBCommands
) else (
    echo Invalid category. Please enter a valid number.
    goto :START
)

pause
exit /b

:LaunchBrowsingApps
start "" "C:\Program Files\Ablaze Floorp\floorp.exe"
exit /b

:LaunchCodingApps
start "" "C:\Program Files\Visual Studio Code\Code.exe"
start "" "C:\Program Files\JetBrains\PyCharm Community Edition 2021.2\bin\pycharm64.exe"
start "" "C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2021.2\bin\idea64.exe"
exit /b

:LaunchDiscord
start "" "C:\Users\jaype\AppData\Local\Discord\Update.exe --processStart Discord.exe"
exit /b

:LaunchADBCommands
call "C:\Users\jaype\OneDrive - AUT University\Desktop\ADB Commands.bat"
exit /b

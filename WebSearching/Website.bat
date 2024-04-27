REM @echo off
REM Define the list of websites you want to open
REM set "websites=www.youtube.com www.aniwave.to www.fmoviesz.to"

REM Loop through each website and open it in the default web browser
REM for %%i in (%websites%) do (
REM    start "" "http://%%i"
REM )

@echo off

REM Prompt the user to enter the websites they want to open
set /p websites=Enter the websites you want to open (separated by spaces): 

REM Loop through each website and open it in the default web browser
for %%i in (%websites%) do (
    start "" "http://%%i"
)


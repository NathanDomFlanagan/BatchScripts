@echo off

:: Set folder paths
set "desktop=%USERPROFILE%\Desktop"
set "organised_folder=%desktop%\Organised"
set "applications_folder=%organised_folder%\Applications"
set "shortcuts_folder=%organised_folder%\Shortcuts"
set "zip_folder=%organised_folder%\ZIP"
set "txt_folder=%organised_folder%\TextFiles"
set "folders_folder=%organised_folder%\Folders"
set "code_folder=%organised_folder%\Code"
set "images_folder=%organised_folder%\Images"
set "pdf_folder=%organised_folder%\PDF"

:: Check if Organised folder exists, if not create it
if not exist "%organised_folder%" mkdir "%organised_folder%"

:: Check if Applications folder exists, if not create it inside Organised folder
if not exist "%applications_folder%" (
    mkdir "%applications_folder%"
)

:: Check if Shortcuts folder exists, if not create it inside Organised folder
if not exist "%shortcuts_folder%" (
    mkdir "%shortcuts_folder%"
)

:: Create subfolders if they don't exist
for %%F in ("%applications_folder%" "%shortcuts_folder%" "%zip_folder%" "%txt_folder%" "%folders_folder%" "%code_folder%" "%images_folder%" "%pdf_folder%") do (
    if not exist "%%F" mkdir "%%F"
)

:: Move all application shortcuts to Applications folder
move "%desktop%\*.lnk" "%applications_folder%"

:: Move all internet shortcuts to Shortcuts folder
move "%desktop%\*.url" "%shortcuts_folder%"

:: Move all zip files to ZIP folder
move "%desktop%\*.zip" "%zip_folder%"

:: Move all txt files to TextFiles folder
move "%desktop%\*.txt" "%txt_folder%"

:: Move all folders to Folders folder
move "%desktop%\*File Folder" "%folders_folder%"

:: Move all docx files to TextFiles folder
move "%desktop%\*.docx" "%txt_folder%"

:: Move all exe files to Applications folder
move "%desktop%\*.exe" "%applications_folder%"

:: Combine java and class files into Code folder
move "%desktop%\*.java" "%code_folder%" > nul 2>&1
move "%desktop%\*.class" "%code_folder%" > nul 2>&1
move "%desktop%\*.html" "%code_folder%" > nul 2>&1
move "%desktop%\*.htm" "%code_folder%" > nul 2>&1

:: Move all jpg files to Images folder
move "%desktop%\*.jpg" "%images_folder%"
move "%desktop%\*.png" "%images_folder%"

:: Move all pdf files to PDF folder
move "%desktop%\*.pdf" "%pdf_folder%"

echo Done.
pause
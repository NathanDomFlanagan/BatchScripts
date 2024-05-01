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
echo Checking if Organised folder exists...
if not exist "%organised_folder%" (
    echo "Organised folder does not exist. Creating...
    mkdir "%organised_folder%"
    echo "Organised" folder created.
	echo.
) else (
    echo "Organised" folder already exists.
	echo.
)

:: Create subfolders if they don't exist
for %%F in ("%applications_folder%" "%shortcuts_folder%" "%zip_folder%" "%txt_folder%" "%folders_folder%" "%code_folder%" "%images_folder%" "%pdf_folder%") do (
    echo Checking if "%%~nxF" folder exists...
    if not exist "%%~F" (
        echo "%%~nxF" folder does not exist. Creating...
        mkdir "%%~F"
        echo "%%~nxF" folder created.
		echo.
    ) else (
        echo "%%~nxF" folder already exists.
		echo.
    )
)

:: Move files to respective folders
echo Moving files to respective folders... && echo.
move "%desktop%\*.lnk" "%applications_folder%" > nul 2>&1 && echo Moved .lnk files to Applications folder. && echo.
move "%desktop%\*.url" "%shortcuts_folder%" > nul 2>&1 && echo Moved .url files to Shortcuts folder. && echo.
move "%desktop%\*.zip" "%zip_folder%" > nul 2>&1 && echo Moved .zip files to ZIP folder. && echo.
move "%desktop%\*.txt" "%txt_folder%" > nul 2>&1 && echo Moved .txt files to TextFiles folder. && echo.
move "%desktop%\*File Folder" "%folders_folder%" > nul 2>&1 && echo Moved folders to Folders folder. && echo.
move "%desktop%\*.docx" "%txt_folder%" > nul 2>&1 && echo Moved .docx files to TextFiles folder. && echo.
move "%desktop%\*.exe" "%applications_folder%" > nul 2>&1 && echo Moved .exe files to Applications folder. && echo.
move "%desktop%\*.java" "%code_folder%" > nul 2>&1 && echo Moved .java files to Code folder. && echo.
move "%desktop%\*.class" "%code_folder%" > nul 2>&1 && echo Moved .class files to Code folder. && echo.
move "%desktop%\*.html" "%code_folder%" > nul 2>&1 && echo Moved .html files to Code folder. && echo.
move "%desktop%\*.htm" "%code_folder%" > nul 2>&1 && echo Moved .htm files to Code folder. && echo.
move "%desktop%\*.jpg" "%images_folder%" > nul 2>&1 && echo Moved .jpg files to Images folder. && echo.
move "%desktop%\*.png" "%images_folder%" > nul 2>&1 && echo Moved .png files to Images folder. && echo.
move "%desktop%\*.pdf" "%pdf_folder%" > nul 2>&1 && echo Moved .pdf files to PDF folder. && echo.


echo Finished cleaning up.
pause
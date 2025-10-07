@echo off
setlocal enabledelayedexpansion

title Docspro Folder Setup
color 0A

echo ==================================================
echo        Docspro Folder Setup by Dmytro
echo ==================================================
echo.


set /p drive=Enter the drive letter where folders should be created (e.g. C, D, E): 


set drive=%drive:~0,1%
set drive=%drive:A=a%

:: Check if drive exists
if not exist %drive%:\ (
    echo.
    echo Drive %drive%: does not exist. Please check and try again.
    pause
    exit /b
)

echo.
echo Press Enter to start creating the folders on drive %drive%:...
pause > nul


set target=%drive%:\Docspro


mkdir "%target%" 2>nul


mkdir "%target%\Backup" 2>nul
mkdir "%target%\Software" 2>nul
mkdir "%target%\Documentation" 2>nul


mkdir "%target%\Software\Tungsten" 2>nul
mkdir "%target%\Software\Microsoft" 2>nul
mkdir "%target%\Software\Tools" 2>nul
mkdir "%target%\Software\Docspro" 2>nul


mkdir "%target%\Software\Tungsten\Tungsten Capture" 2>nul
mkdir "%target%\Software\Tungsten\Tungsten Transformation Module" 2>nul

echo.
echo Folders have been successfully created on drive %drive%:\Docspro
pause
:: Dear reader, if you want to change icons, remember that imageres.dll & shell32.dll,
:: which are libraries, are poorly made by Microsoft employees who apparently came to work after a party.
:: So if you want to choose an icon, know that you will have to guess a id of the icon based on coffee grounds or 
:: take apart the dll for parts—which I don't recommend.

:: Well, in general, remember that structuring your work reduces the amount of pain in the ass at the right moment. Good Luck and have fun :D


@echo off
setlocal EnableExtensions

title New Project
color 0A

set "ROOT=D:\Projects"


 
set "ICON_BASE=%SystemRoot%\System32\shell32.dll,265"
set "ICON_DOCS=%SystemRoot%\System32\imageres.dll,085"
set "ICON_REPORTS=%SystemRoot%\System32\imageres.dll,290"
set "ICON_SERVERS=%SystemRoot%\System32\shell32.dll,223"
set "ICON_SCRIPTS=%SystemRoot%\System32\imageres.dll,095"
set "ICON_SOFTWARE=%SystemRoot%\System32\imageres.dll,082"
set "ICON_ISSUES=%SystemRoot%\System32\shell32.dll,023"

if not exist "D:\" exit /b

echo ===========================================
echo     Create project folders by Dmytro
echo ===========================================
echo.
set /p "NAME=Type name of Project/Customer: "
if "%NAME%"=="" exit /b

if not exist "%ROOT%" mkdir "%ROOT%"

set "BASE=%ROOT%\%NAME%"
mkdir "%BASE%" 2>nul
mkdir "%BASE%\Documentation" 2>nul
mkdir "%BASE%\Documentation\Reports" 2>nul
mkdir "%BASE%\Servers" 2>nul
mkdir "%BASE%\Scripts" 2>nul
mkdir "%BASE%\Software" 2>nul
mkdir "%BASE%\Issues & Escalations" 2>nul

call :SetIcon "%BASE%" "%ICON_BASE%"
call :SetIcon "%BASE%\Documentation" "%ICON_DOCS%"
call :SetIcon "%BASE%\Documentation\Reports" "%ICON_REPORTS%"
call :SetIcon "%BASE%\Servers" "%ICON_SERVERS%"
call :SetIcon "%BASE%\Scripts" "%ICON_SCRIPTS%"
call :SetIcon "%BASE%\Software" "%ICON_SOFTWARE%"
call :SetIcon "%BASE%\Issues & Escalations" "%ICON_ISSUES%"

if exist "%SystemRoot%\System32\ie4uinit.exe" ie4uinit.exe -show >nul 2>&1
rundll32.exe shell32.dll,SHChangeNotify 0x8000000 0 0

start "" "%BASE%"
endlocal
exit

:SetIcon
(
  echo [.ShellClassInfo]
  echo IconResource=%~2
) > "%~1\desktop.ini"
attrib +r "%~1" >nul 2>&1
attrib +s "%~1" >nul 2>&1
attrib +h "%~1\desktop.ini" >nul 2>&1
exit /b
 
@echo off
setlocal
color 0A
title Checking the installed software

echo ==================================================
echo        Software Inventory Script by Dmytro
echo ==================================================
echo.
echo   Machine: %COMPUTERNAME%
echo   User:    %USERNAME%
echo   Date:    %DATE% %TIME%
echo ==================================================
echo.
echo Press Enter to start collecting software information...
pause > nul

echo.
echo Collecting information about the installed software...
echo This may take a moment.
echo.

:: check if WMIC exist
where wmic >nul 2>&1
if errorlevel 1 (
    echo WMIC is not available on this system. Use a PowerShell variant if needed.
    echo.
    pause
    exit /b
)


for /f "skip=1 tokens=2,3 delims=," %%A in ('
    wmic product where "Name like 'Tungsten%%' or Name like 'Kofax%%' or Name like 'Docspro%%' or Name like 'SharePoint%%' or Name like 'VB%%' or Name like 'PDF Compressor%%' or Name like 'Foxit%%' or Name like 'ODBC%%' or Name like 'Microsoft Command Line Utilities%%' or Name like 'SQL Server Management Studio%%' or Name like 'Docspro Detail Line Release Script%%' or Name like 'KTM DatabaseDialog%%' or Name like 'Docspro FTP Export Connector%%' or Name like 'Docspro IBM Content Manager Release%%' or Name like 'Docspro Import Control Release Script%%' or Name like 'Docspro Invoice Extender%%' or Name like 'Docspro Join Export Connector%%' or Name like 'Docspro OnBase Release%%' or Name like 'Docspro Djuma Export Connector%%' or Name like 'Maatwerk%%' or Name like 'Docspro FIS Koppeling%%' or Name like 'Docspro FMS Koppeling%%' or Name like 'Docspro PDF Agent%%' or Name like 'Docspro TiffToPDF%%' or Name like 'OnBase%%'"
    get Name^,Version /format:csv
') do (
    if not "%%A"=="" echo %%~A: %%~B
)
echo.
pause
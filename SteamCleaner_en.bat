@echo off
SET "version=v3.0.0-opt"
SETLOCAL EnableExtensions DisableDelayedExpansion

:: Color definitions
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
set "GREEN=%ESC%[92m"
set "RED=%ESC%[31m"
set "RESET=%ESC%[0m"

:: Check for admin rights
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B
)
if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs"

:: Switch to script directory
cd /d "%~dp0"

:: Ensure Steam is present
if not exist "%~dp0%steam.exe" (
    echo %RED%Error: Please run this script from within the Steam directory.%RESET%
    pause
    exit /B
)

:menu
cls
echo %GREEN%-------------------------------------------------------------------------
echo # GameIndustry.eu - Steam Cleaner %version%
echo -------------------------------------------------------------------------%RESET%
echo.
echo 1^) Remove crash handler ^& spyware
echo 2^) Clear library cache (httpcache, librarycache, stats)
echo 3^) Clear download ^& shader cache
echo 4^) Clear HTML cache
echo 5^) Delete leftover modding files (CSS)
echo 6^) About
echo 7^) Exit
echo.

set /p navi=Choice: 
if "%navi%"=="1" goto Steam
if "%navi%"=="2" goto Biblio
if "%navi%"=="3" goto DL_Cache
if "%navi%"=="4" goto HT_Cache
if "%navi%"=="5" goto CF_Del
if "%navi%"=="6" goto about
if "%navi%"=="7" exit
goto menu

:Steam
cls
echo %GREEN%Checking if Steam is running...%RESET%
tasklist /FI "IMAGENAME eq steam.exe" | find /I "steam.exe" >nul
echo.
if %errorlevel%==0 (
    echo %RED%Steam is running - terminating...%RESET%
    taskkill /F /T /IM steam.exe >nul 2>&1
) else (
    echo %GREEN%Steam is not running.%RESET%
)

timeout /t 2 >nul

if not exist "steam.cfg" (
    echo BootStrapperInhibitAll=enable> steam.cfg
    echo BootStrapperForceSelfUpdate=disable>> steam.cfg
)
echo.
echo %GREEN%1. Removing crash handlers, logs and dumps...%RESET%
del /f /q ^
  ".crash" ^
  "bin\secure_desktop_capture.*" ^
  "bin\steam_monitor.exe" ^
  "package\steam_client_metrics.bin" ^
  "bin\cef\cef.win7x64\crash_reporter.cfg" ^
  "bin\cef\cef.win7x64\debug.log" ^
  "crashhandler*.dll" ^
  "crashhandler.dll.old" ^
  "steamerrorreporter*.exe" ^
  "WriteMiniDump.exe" ^
  "CSERHelper.dll" ^
  "steamsysinfo.exe" ^
  "ThirdPartyLegalNotices.css" ^
  "ThirdPartyLegalNotices.doc" ^
  "ThirdPartyLegalNotices.html" >nul 2>&1

rd /s /q "bin\cef\cef.win7" 2>nul
rd /s /q "logs" 2>nul
rd /s /q "dumps" 2>nul

echo %GREEN%2. Cleaning system folders: crash data, usage analytics, local app data and residual files...%RESET%
set "foldersToDelete=%userprofile%\AppData\Local\CrashDumps %userprofile%\AppData\Local\CEF\User Data\Crashpad %userprofile%\AppData\Local\CrashReportClient %userprofile%\AppData\Local\T2GP Launcher\app-1.0.4.2070 %userprofile%\AppData\Local\GameAnalytics %userprofile%\AppData\Local\UnrealEngine %userprofile%\AppData\Local\UniSDK %userprofile%\AppData\Local\BuffPanel"
for %%i in (%foldersToDelete%) do if exist "%%i" rd /s /q "%%i"

echo %GREEN%3. Removing third-party crash-related files...%RESET%
setlocal enabledelayedexpansion
set "deletedCount=0"
set "filelist=abbey_crash_reporter.exe apex_crash_handler.exe BsSndRpt.exe BsSndRpt64.exe BsUnityCrashHandler.exe BugSplat.dll BugSplat64.dll BugSplatDotNet.dll BugSplatRc.dll BugSplatRc64.dll CrashReport.exe CrashReportClient.exe CrashReportClient.pdb CrashReporter.dll CrashReporter.exe CrashReporter.exe.config CrashRpt1403.dll CrashRptProbe1403.dll CrashSender1402.exe CrashSender1403.exe CrashUploader.Base.Azure.dll CrashUploader.Base.dll CrashUploader.Base.UI.dll CrashUploader.Publish.exe CrashUploader.Publish.exe.config crashagent64.exe crashmsg.exe crashpad_handler.exe crashrpt_lang.ini DLogUploader.exe GameCrashUploader.exe log.txt output_log.txt REDEngineErrorReporter.exe RemoteCrashSender.exe steam_autocloud.vdf telemetry64.dll UEPrereqSetup_x64.exe UnrealCEFSubProcess.exe UnityCrashHandler32.exe UnityCrashHandler64.exe"

for %%i in (%filelist%) do (
    for /f "delims=" %%f in ('dir /s /b /a:-d "%cd%\%%i" 2^>nul') do (
        del /f /q "%%f" >nul 2>&1
        if not exist "%%f" (
            set /a deletedCount+=1
        )
    )
)
echo.
if !deletedCount! gtr 0 (
    echo [INFO] !deletedCount! Files and crash components from third-party vendors have been removed.
) else (
    echo [INFO] No files or crash components from third-party vendors found.
)
endlocal

echo.
echo %GREEN%4. Removing empty folders...%RESET%
setlocal EnableDelayedExpansion
set "deletedFolders=0"
for /f "delims=" %%d in ('dir /ad /b /s ^| sort /R') do (
    rd "%%d" 2>nul
    if not exist "%%d" (
        set /a deletedFolders+=1
    )
)
echo.
if !deletedFolders! gtr 0 (
    echo [INFO] !deletedFolders! empty folders were removed.
) else (
    echo [INFO] No empty folders found.
)
endlocal

echo.
echo %GREEN%Operation completed.%RESET%
pause
goto menu

:Biblio
cls
echo %GREEN%Clearing library cache...%RESET%
echo.
echo Note: These folders will be automatically recreated when Steam starts.
rd /s /q "appcache\httpcache" >nul 2>&1
rd /s /q "appcache\librarycache" >nul 2>&1
rd /s /q "appcache\stats" >nul 2>&1
echo.
echo %GREEN%Done.%RESET%
pause
goto menu

:DL_Cache
cls
echo %GREEN%Clearing download ^& shader cache...%RESET%
rd /s /q "steamapps\downloading" >nul 2>&1
rd /s /q "steamapps\depotcache" >nul 2>&1
rd /s /q "steamapps\shadercache" >nul 2>&1
rd /s /q "steamapps\temp" >nul 2>&1
rd /s /q "steamapps\workshop\downloads" >nul 2>&1
rd /s /q "steamapps\workshop\temp" >nul 2>&1
echo %GREEN%Done.%RESET%
pause
goto menu

:HT_Cache
cls
echo %GREEN%Checking Steam status...%RESET%
tasklist /FI "IMAGENAME eq steam.exe" | find /I "steam.exe" >nul
if %errorlevel%==0 (
    echo %RED%Closing Steam...%RESET%
    taskkill /F /T /IM steam.exe >nul 2>&1
)
echo %GREEN%Clearing HTML cache...%RESET%
if exist "%userprofile%\AppData\Local\Steam\htmlcache\Cache" (
    rd /s /q "%userprofile%\AppData\Local\Steam\htmlcache\Cache" >nul 2>&1
)
echo %GREEN%Done.%RESET%
pause
goto menu

:CF_Del
cls
echo %GREEN%Deleting leftover modding CSS files...%RESET%
del /s /q "clientui\*.custom.css" "clientui\*.original.css" >nul 2>&1
del /s /q "steamui\*.custom.css" "steamui\*.original.css" >nul 2>&1
echo %GREEN%Done.%RESET%
pause
goto menu

:about
cls
echo %GREEN%About this Steam cleanup script%RESET%
echo.
echo Project page:  https://gameindustry.eu/
echo Donations:     https://gameindustry.eu/donations/
echo Contact:       https://gameindustry.eu/contact/
echo Author:        Pengin
echo Version:       %version%
echo.
echo %GREEN%File Information:%RESET%
set "filename=%~nx0"
for %%A in ("%~nx0") do echo Name: %%~nxA - Size: %%~zA Bytes

for /f "tokens=* delims=" %%h in ('CertUtil -hashfile "%~f0" SHA256 ^| find /i /v "SHA256" ^| find /i /v "certutil"') do set "sha=%%h"
echo SHA256: %sha%

echo.
pause
goto menu
Steam Cleaner – Version 3.0.0 (GameIndustry.eu)
Last updated: May 10, 2025
Author: Pengin

------------------------------------------------------------
1. Purpose of the Script
------------------------------------------------------------
The Steam Cleaner is a Windows batch script designed to specifically remove:

- Crash handlers, logs, and dumps from the Steam directory
- Tracking and analytics components such as UnityCrashHandler, GameAnalytics, or CrashReportClients
- Temporary caches (shader, HTML, and library)
- Modding leftovers (e.g. .custom.css files)
- Empty folders

The goal is to reduce unwanted data collection during gaming sessions.
A 'steam.cfg' is automatically created (if not present) to prevent Steam from auto-updating and restoring deleted files.

------------------------------------------------------------
2. Usage & Installation
------------------------------------------------------------
1. Copy the batch file into your Steam installation directory or one of your Steam library folders.
2. When launched, the script automatically requests administrator rights (UAC confirmation required).
3. The script must be executed again after installing new games, as these often include new tracking or crash reporting components.

------------------------------------------------------------
3. Files and Folders Cleaned
------------------------------------------------------------

System directories:
%USERPROFILE%\AppData\Local\CrashDumps\
%USERPROFILE%\AppData\LocalLow\Unity\
%USERPROFILE%\AppData\Local\T2GP Launcher\app-1.0.4.2070\crashagent64.exe

Steam directory:
.crash, logs\, dumps\, crashhandler*.dll, WriteMiniDump.exe, ...
bin\cef\cef.win7\, steamerrorreporter*.exe, secure_desktop_capture.*, ...

Third-party crash and tracking components:
CrashReport*.exe/.dll/.config/.pdb
BsUnityCrashHandler.exe, BugSplatRc.dll, DLogUploader.exe,
RemoteCrashSender.exe, UnityCrashHandler*.exe, telemetry64.dll, ...

------------------------------------------------------------
4. Recent Changes
------------------------------------------------------------
- Improved SHA256 output formatting
- Fixed path errors when elevated via UAC
- Automatic removal of empty folders
- Optional cleaning of HTML, shader, and library caches
- More reliable detection of third-party crash files

------------------------------------------------------------
5. Notes & Potential Issues
------------------------------------------------------------
The following files are not deleted due to potential compatibility issues with specific games:
- Unity.MemoryProfiler.dll
- UnityEngine.CrashReportingModule.dll
- UnityEngine.PerformanceReportingModule.dll
- UnityEngine.UnityConnectModule.dll
- UnityEngine.UnityTestProtocolModule.dll

For GameCrashUploader.exe: delete the file manually and replace it with a dummy 0 KB .exe file with the same name.

------------------------------------------------------------
6. Project Info & Hashes
------------------------------------------------------------
Website:  https://gameindustry.eu/
Donate:   https://gameindustry.eu/donations/
Contact:  https://gameindustry.eu/contact/
Version:  3.0.0
Date:     May 10, 2025

Filename: SteamCleaner.bat

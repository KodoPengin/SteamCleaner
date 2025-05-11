Steam Cleaner – Version 3.0.0 (GameIndustry.eu)
Letzte Aktualisierung: 10.05.2025
Autor: Pengin

------------------------------------------------------------
1. Zweck des Skripts
------------------------------------------------------------
Der Steam Cleaner ist ein Windows-Batch-Skript zur gezielten Entfernung von:

- Crashhandlern, Logs und Dumps aus dem Steam-Verzeichnis
- Tracking- und Analytics-Komponenten wie UnityCrashHandler, GameAnalytics oder CrashReportClients
- temporären Caches (Shader, HTML, Bibliothek)
- Modding-Rückständen (.custom.css-Dateien)
- leeren Ordnern

Ziel ist die Reduktion unerwünschter Datenerfassung während des Spielens.
Eine "steam.cfg" verhindert dabei automatische Steam-Updates, die gelöschte Dateien wiederherstellen würden.

------------------------------------------------------------
2. Verwendung & Installation
------------------------------------------------------------
1. Batch-Datei ins Steam-Verzeichnis oder in einen Steam-Bibliotheksordner kopieren.
2. Beim Start fordert das Skript automatisch Administratorrechte an (UAC-Bestätigung erforderlich).
3. Das Skript muss nach der Installation neuer Spiele erneut ausgeführt werden, da dabei oft neue Spyware- oder Crashlytics-Komponenten installiert werden.

------------------------------------------------------------
3. Bereinigte Dateien und Ordner
------------------------------------------------------------

Systemverzeichnisse:
%USERPROFILE%\AppData\Local\CrashDumps\
%USERPROFILE%\AppData\LocalLow\Unity\
%USERPROFILE%\AppData\Local\T2GP Launcher\app-1.0.4.2070\crashagent64.exe

Steam-Verzeichnis:
.crash, logs\, dumps\, crashhandler*.dll, WriteMiniDump.exe, ...
bin\cef\cef.win7\, steamerrorreporter*.exe, secure_desktop_capture.*, ...

Drittanbieter-Crash- und Tracking-Dateien:
CrashReport*.exe/.dll/.config/.pdb
BsUnityCrashHandler.exe, BugSplatRc.dll, DLogUploader.exe,
RemoteCrashSender.exe, UnityCrashHandler*.exe, telemetry64.dll, ...

------------------------------------------------------------
4. Letzte Änderungen
------------------------------------------------------------
- Optimierte SHA256-Ausgabe
- Schutz gegen UAC-Verzeichnisfehler
- Automatisches Entfernen leerer Ordner
- HTML-/Shader-/Bibliotheks-Cache gezielt löschbar
- Verbesserte Prüfung auf Drittanbieter-Dateien

------------------------------------------------------------
5. Hinweise & mögliche Probleme
------------------------------------------------------------
Die folgenden Dateien werden aus Kompatibilitätsgründen NICHT gelöscht:
- Unity.MemoryProfiler.dll
- UnityEngine.CrashReportingModule.dll
- UnityEngine.PerformanceReportingModule.dll
- UnityEngine.UnityConnectModule.dll
- UnityEngine.UnityTestProtocolModule.dll

Für GameCrashUploader.exe: manuell durch leere 0-KB-Datei ersetzen.

Wie immer gibt es Ausnahmen: Einige Spiele sind fest mit ihren Crash-Handlern verknüpft und lassen sich nach deren Entfernung möglicherweise nicht mehr starten. In solchen Fällen müsst ihr die betroffenen Titel manuell reparieren über Spieleinstellungen in eurer Bibliothek → Installierte Dateien → Dateien auf Fehler überprüfen.

------------------------------------------------------------
6. Projektinformationen, Hashes
------------------------------------------------------------
Website:  https://gameindustry.eu/
Spenden:  https://gameindustry.eu/donations/
Kontakt:  https://gameindustry.eu/contact/
Version:  3.0.0
Datum:    10.05.2025

Dateiname: SteamCleaner.bat
Sha256: 049c7ad8983e38969065af10362a578faea0203ee06f4e55d90490056547a2c4
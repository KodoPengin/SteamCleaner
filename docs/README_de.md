<h1 align="center">Spyware Cleaner für Steam</h1>
<h3 align="center">Entferne Telemetrie, Crash-Analysen und unerwünschte Dateien aus deinem Steam- und Spieleverzeichnis</h3>

<br />

<h3 align="center">
  <a href="https://github.com/KodoPengin/SteamCleaner/issues">Fehler melden</a>
  <span> · </span>
  <a href="https://github.com/KodoPengin/SteamCleaner/discussions">Diskussionen</a>
  <span> · </span>
  <a href="/README.md">Englische Readme</a>
</h3>

<p align="center">
  <a href="https://github.com/KodoPengin/SteamCleaner/watchers"><img alt="Beobachter" src="https://img.shields.io/github/watchers/KodoPengin/Del_U3A.svg?color=0088ff" /></a>
  <a href="https://github.com/KodoPengin/SteamCleaner/stargazers"><img alt="Sterne" src="https://img.shields.io/github/stars/KodoPengin/Del_U3A.svg?color=0088ff" /></a>
  <a href="https://github.com/KodoPengin/SteamCleaner/network/members"><img alt="Forks" src="https://img.shields.io/github/forks/KodoPengin/Del_U3A.svg?color=0088ff" /></a>
  <a href="https://github.com/KodoPengin/SteamCleaner/issues"><img alt="Issues" src="https://img.shields.io/github/issues/KodoPengin/Del_U3A.svg?color=0088ff" /></a>
  <a href="https://gameindustry.eu"><img alt="Website" src="https://img.shields.io/badge/website-online-blue?url=https%3A%2F%2Fgameindustry.eu?color=0088ff" /></a>
</p>

<br />

## 📝 Projektübersicht

Der Steam-Client sowie viele Spiele erfassen über Telemetrie, Analysefunktionen, Absturzberichte und andere Mechanismen Informationen – häufig ohne ausdrückliche Zustimmung des Nutzers. Diese Dateien können sich über die Zeit ansammeln und sowohl die Privatsphäre als auch die Systemleistung beeinträchtigen.

Dieses Projekt bietet ein Skript, das diese Dateien automatisch aufspürt und aus dem Steam-Hauptverzeichnis sowie aus Spielebibliotheken entfernt.

## 🔧 Funktionen

- Entfernt Crash-Handler, Logdateien und Telemetriekomponenten u.a. von:
  - Unity Technologies  
  - Epic Games  
  - Microsoft Corporation  
  - Google LLC  
  - Avalanche Studios  
  - ... und weiteren Anbietern
- Bereinigt Steam-spezifische Caches:
  - Bibliotheks-Cache (`httpcache`, `librarycache`, `stats`)
  - Download- und Shader-Cache
  - HTML-Browsercache von Steam
- Löscht übriggebliebene Modding-Dateien (`*.custom.css` usw.)
- Löscht leere Ordner rekursiv zur besseren Verzeichnisstruktur
- Erkennt laufende Steam-Prozesse und beendet sie automatisch vor dem Bereinigen
- Prüft auf Administratorrechte und fordert diese bei Bedarf an

## 📦 Installation & Nutzung

1. **Kopiere das passende Skript** (`SteamCleaner_de.bat` oder `SteamCleaner_en.bat`) in dein Steam-Installationsverzeichnis oder einen Bibliotheksordner.
2. **Starte das Skript mit Administratorrechten.**
3. Das Skript zeigt dir ein Menü mit den verfügbaren Reinigungsoptionen.

> **Hinweise:**  
> - Im Hauptverzeichnis von Steam verhindert die Datei `steam.cfg` automatische Updates. Sie kann bei Bedarf gelöscht werden.  
> - Das Skript kann jederzeit erneut ausgeführt werden – insbesondere nach der Installation neuer Spiele.

### 📁 Dateinamen

| Sprache | Skriptdatei            | Readme-Datei     |
|---------|------------------------|------------------|
| Englisch| `SteamCleaner_en.bat`  | `readme_EN.txt`  |
| Deutsch | `SteamCleaner_de.bat`  | `readme_DE.txt`  |

## 🖼️ Screenshots

<p float="left">
  <img src="https://www.gameindustry.eu/images/git/del_U3A.webp?ts=20250510114745" alt="Menüansicht" width="400">
  <img src="https://www.gameindustry.eu/images/git/del_U3A_explorer.webp?ts=20250510114746" alt="Führe den Cleaner aus dem Steam-Verzeichnis aus." width="400">
</p>

## 🐞 Fehler & Beiträge

Du hast einen Fehler gefunden oder Verbesserungsvorschläge?
- Öffne ein [Issue](https://github.com/KodoPengin/SteamCleaner/issues)
- Starte eine [Diskussion](https://github.com/KodoPengin/SteamCleaner/discussions)

Dein Feedback ist willkommen – das Projekt wird kontinuierlich verbessert.

## 🔒 Lizenz & Credits

Dieses Skript wurde von **[GameIndustry.eu](https://www.gameindustry.eu)** entwickelt und wird aktiv gepflegt.

> **Wichtig:**  
> Verwende nur Versionen aus der offiziellen Quelle. Bei abweichendem Inhalt handelt es sich womöglich um eine manipulierte Datei.

Support & Kontakt:
- [Website](https://www.gameindustry.eu)
- [Kontaktformular](https://www.gameindustry.eu/contact/)
- [Steam-Gruppe: Spyware in games? No thanks!](https://steamcommunity.com/groups/penguindome/)

---

## 🔗 Weitere Projekte

- **[GameIndustry Hosts Templates](https://github.com/KodoPengin/GameIndustry-hosts-Template)**  
  Maßgeschneiderte Host-Dateien für mehr Privatsphäre in Spielen und Anwendungen.

- **[PenginUI – Steam Skin](https://github.com/KodoPengin/PenginUI)**  
  Minimalistisches und aufgeräumtes Steam-Design (Work in Progress).

- **[qBittorrent IPFilter Updater](https://github.com/KodoPengin/python-ipfilter-qbittorent)**  
  Ein Python-Skript, das automatisch mehrere IP-Blocklisten herunterlädt, zusammenführt und für qBittorrent konvertiert.
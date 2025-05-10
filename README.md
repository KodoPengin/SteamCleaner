<h1 align="center">Spyware Cleaner for Steam</h1>
<h3 align="center">Remove telemetry, crash analytics, and unwanted files from your Steam installation and game directories</h3>

<br />

<h3 align="center">
  <a href="https://github.com/KodoPengin/Del_U3A/issues">Report a Bug</a>
  <span> · </span>
  <a href="https://github.com/KodoPengin/Del_U3A/discussions">Discussions</a>
  <span> · </span>
  <a href="/docs/README_de.md">Deutsch</a>
</h3>

<p align="center">
  <a href="https://github.com/KodoPengin/Del_U3A/watchers"><img alt="Watchers" src="https://img.shields.io/github/watchers/KodoPengin/Del_U3A.svg?color=0088ff" /></a>
  <a href="https://github.com/KodoPengin/Del_U3A/stargazers"><img alt="Stars" src="https://img.shields.io/github/stars/KodoPengin/Del_U3A.svg?color=0088ff" /></a>
  <a href="https://github.com/KodoPengin/Del_U3A/network/members"><img alt="Forks" src="https://img.shields.io/github/forks/KodoPengin/Del_U3A.svg?color=0088ff" /></a>
  <a href="https://github.com/KodoPengin/Del_U3A/issues"><img alt="Issues" src="https://img.shields.io/github/issues/KodoPengin/Del_U3A.svg?color=0088ff" /></a>
  <a href="https://gameindustry.eu"><img alt="Website" src="https://img.shields.io/badge/website-online-blue?url=https%3A%2F%2Fgameindustry.eu?color=0088ff" /></a>
</p>

<br />

## 📝 Project Overview

The Steam client and many games collect data through telemetry, analytics, crash reports, and other mechanisms — often without clear user consent. These files can accumulate over time, compromising both performance and privacy.

This project provides a script that helps users automatically identify and delete such files from their Steam directory and library folders.

## 🔧 Features

- Removes crash handlers, logs, and telemetry components from various vendors, including:
  - Unity Technologies
  - Epic Games
  - Microsoft Corporation
  - Google LLC
  - Avalanche Studios
  - ... and others
- Cleans Steam-related caches:
  - Library cache (`httpcache`, `librarycache`, `stats`)
  - Download and shader cache
  - HTML browser cache
- Deletes leftover modding files (`*.custom.css`, etc.)
- Removes empty directories recursively to keep your folders clean
- Automatically terminates Steam if running before cleaning
- Checks for administrative rights and restarts with elevated permissions if needed

## 📦 Installation & Usage

1. **Copy the appropriate script** (`SteamCleaner_de.bat` or `SteamCleaner_en.bat`) into your Steam installation or library folder.
2. **Run the script as administrator.**
3. The script will guide you through cleanup options via a text-based menu.

> **Note:**  
> - In the main installation folder, `steam.cfg` prevents auto-updates unless manually removed.  
> - You can rerun the script anytime — especially after installing new games.

### 📁 Filenames

| Language | Script             | Readme File     |
|----------|--------------------|-----------------|
| English  | `SteamCleaner_en.bat`   | `readme_EN.txt` |
| German   | `SteamCleaner_de.bat`   | `readme_DE.txt` |

## 🖼️ Screenshots

<p float="left">
  <img src="https://www.gameindustry.eu/images/git/del_U3A.webp" alt="Main Menu" width="400">
  <img src="https://www.gameindustry.eu/images/git/del_U3A_explorer.webp" alt="File Cleanup" width="400">
</p>

## 🐞 Bugs & Contributions

Found a bug or typo? Have an improvement suggestion?
- Open an [issue](https://github.com/KodoPengin/Del_U3A/issues)
- Start a [discussion](https://github.com/KodoPengin/Del_U3A/discussions)
- Or contact me via [GameIndustry.eu](https://www.gameindustry.eu/u/kontakt/)

I'm always happy to improve the project based on your feedback.

## 🔒 License & Credits

This script was developed by **[GameIndustry.eu](https://gameindustry.eu)** and is actively maintained.

> **Important:**  
> Only use versions directly from the official source. If the file content differs from what is documented, it may be tampered with.

For support or inquiries, visit:
- [GameIndustry.eu](https://www.gameindustry.eu)
- [Contact Page](https://www.gameindustry.eu/contact/)
- [Steam Group: Spyware in games? No thanks!](https://steamcommunity.com/groups/penguindome/)

---

## 🔗 Related Projects

- **[GameIndustry Hosts Templates](https://github.com/KodoPengin/GameIndustry-hosts-Template)**  
  Improve online privacy by using custom host files for games and applications.

- **[PenginUI – Steam Skin](https://github.com/KodoPengin/PenginUI)**  
  A clean and minimal Steam skin (work in progress).

- **[qBittorrent IPFilter Updater](https://github.com/KodoPengin/python-ipfilter-qbittorent)**  
  This Python script automatically downloads, merges, and converts multiple IP filter blocklists from I-Blocklist
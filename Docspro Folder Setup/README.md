# 📁 Docspro Folder Setup Script

A simple **Windows Batch Script** that automatically creates the standard folder structure for **Docspro** projects.  
Developed by **Dmytro Nozhenko**.

---

## 🚀 Overview

This script helps quickly set up a consistent directory structure for Docspro installations or deployments.  
It allows the user to specify the target drive and then automatically creates all required subfolders.

---

## 🧩 Folder Structure Created


<Selected Drive>:\Docspro
│
├── Backup
├── Documentation
└── Software
├── Docspro
├── Microsoft
├── Tools
└── Tungsten
├── Tungsten Capture
└── Tungsten Transformation Module


---

## ⚙️ How It Works

1. The script prompts you to enter the **drive letter** where the folders should be created (e.g., `C`, `D`, or `E`).
2. It checks whether the drive exists.
3. After confirmation, it creates the full Docspro folder hierarchy under the specified drive.
4. Once done, it displays a success message.

---

## 🖥️ Usage

1. Download or copy the script file (e.g., `Docspro_Folder_Setup.bat`).
2. Right-click the file and select **Run as administrator** *(recommended)*.
3. Enter the drive letter when prompted.
4. Press **Enter** to start folder creation.
5. Wait until the confirmation message appears.

---

## 🧰 Example


Enter the drive letter where folders should be created (e.g. C, D, E): D

Press Enter to start creating the folders on drive D:...

Folders have been successfully created on drive D:\Docspro


---

## ⚠️ Notes

- Make sure you have **write permissions** on the target drive.
- The script automatically **skips existing folders** (no overwrite).
- Compatible with **Windows 7, 10, 11, Server 2016+**.

---

## ✍️ Author

**Dmytro Nozhenko**  
Created to simplify software validation and audit during Kofax/Docspro deployments.

---

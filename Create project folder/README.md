# 🧱 Project Folder Setup Script

A simple **Windows Batch Script** that automatically creates a standard folder structure for a **new project or customer**, complete with **custom Windows icons**.

## 🚀 Overview

This script helps quickly set up a consistent directory structure for new projects stored under `D:\Projects`. Each folder receives a **unique icon** from Windows system libraries to make navigation more visual and convenient.

## 🧩 Folder Structure Created

---
D:\Projects\<ProjectName>
│
├── Documentation
│   └── Reports
├── Servers
├── Scripts
├── Software
└── Issues & Escalations
---

Each folder automatically includes a `desktop.ini` file that assigns it a custom icon.

## ⚙️ How It Works

1. The script prompts you to enter the **name of the project or customer**.
2. It creates a root directory in `D:\Projects\<ProjectName>`.
3. It generates the full project folder structure.
4. It assigns **custom folder icons** using system DLLs (`imageres.dll` and `shell32.dll`).
5. It refreshes the Windows Explorer view to apply the icons.
6. Finally, it opens the newly created project folder.

## 🖥️ Usage

1. Download or copy the script file (e.g., `Project_Folder_Setup.bat`).
2. Make sure drive `D:` exists, or edit this line in the script:

   ---bat
   set "ROOT=D:\Projects"
   ---
3. Right-click the script and select **Run as administrator** *(recommended)*.
4. Enter the project name when prompted.
5. Wait a few seconds — your structured project folder will open automatically.

## 🧰 Example

---
Type name of Project/Customer: Contoso

Folders created in D:\Projects\Contoso:
 - Documentation
 - Documentation\Reports
 - Servers
 - Scripts
 - Software
 - Issues & Escalations

Custom icons successfully applied.
---

## ⚠️ Notes

* Make sure you have **write permissions** on the `D:` drive.
* Existing folders will **not be overwritten**.
* Compatible with **Windows 7, 10, 11, Server 2016+**.
* Icon IDs in `imageres.dll` and `shell32.dll` are not officially documented — they may vary slightly between Windows versions.

## 💡 Tip

To change the default location for all projects, update this variable inside the script:

---bat
set "ROOT=D:\Projects"
---

To change icons, modify the following lines with your preferred icon ID:

```bat
set "ICON_DOCS=%SystemRoot%\System32\imageres.dll,085"
```

---

## ✍️ Author

**Dmytro Nozhenko**  
Created to simplify software validation and audit during Kofax/Docspro deployments.

---
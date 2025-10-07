# 📘 Software Inventory Script

This batch script collects information about specific installed software on a Windows system and displays the results directly in the console.  
It was designed to help quickly identify whether key components such as **Kofax**/**Tungsten**, **Docspro** and other related applications are installed.

---

## 🧩 Features

- Displays machine information (computer name, user, date, time).  
- Lists installed software matching specific keywords.  
- Shows results in the format:  
  ```
  SoftwareName: Version
  ``` 
- Works on Windows systems where **WMIC** is available.

---

## ⚙️ Usage

1. Save the script as `Software Inventory Script.bat`.
2. Run it as **Administrator** (recommended).
3. Press **Enter** when prompted to start scanning.
4. Wait a few moments — the installed software list will appear in the console.

---

## 🔍 Requirements

- **Operating System:** Windows 7, 8, 10, 11, or Server editions.  
- **Tool:** `wmic` must be available (pre-installed on most Windows systems except some builds of Windows 11).  

If `WMIC` is unavailable, you can run a PowerShell alternative script instead.

---

## 🧠 Notes

- The scan filters applications by name using keywords such as:
  ```
  Kofax, Docspro, Tungsten, SharePoint, VB, PDF Compressor,
  Foxit, ODBC, SQL Server Management Studio, and more.
  ```
- The script does not modify or uninstall any software.  
- It’s safe to run on production servers for diagnostics.

---

## ✍️ Author

**Dmytro Nozhenko**  
Created to simplify software validation and audit during Kofax/Docspro deployments.

---
# Phase 2: Initial Assessment

## Overview
This phase covers the initial examination of Jean's laptop disk image to understand the system configuration, installed software, user accounts, and preliminary artifact identification.

**Phase Lead:** Abdullah Hegazi (Timeline Analyst)  
**Start Date:** [Date]  
**Completion Date:** [Date]

---

## Autopsy Case Creation

**Performed by:** Abdullah Hegazi  
**Date:** [Date]  
**Tool:** Autopsy [Version]

### Case Details

**Case Name:** M57-Jean-Investigation  
**Case Number:** M57-CF-001  
**Examiner:** Adham Ahmed, Ahmed Hani, Abdullah Hegazi, Mohamed El-Awady, Hannen Abu Bakr  
**Case Directory:** [Full path]

### Data Source Configuration

**Data Source Type:** Disk Image  
**Image File:** jeanm57.E01  
**Image Format:** EnCase Expert Witness Format (E01)  
**Processing Status:** ☐ Complete ☐ In Progress ☐ Failed

### Autopsy Ingest Modules Run

Select modules run during initial processing:

- [ ] Recent Activity (web history, downloads, etc.)
- [ ] Hash Lookup (NSRL, known bad hash sets)
- [ ] File Type Identification
- [ ] Extension Mismatch Detector
- [ ] Embedded File Extractor
- [ ] EXIF Parser
- [ ] Email Parser
- [ ] Encryption Detection
- [ ] Interesting Files Identifier
- [ ] PhotoRec Carver
- [ ] Keyword Search
- [ ] [Other modules]

**Ingest Completion Time:** [Time]  
**Errors/Warnings:** [Describe any issues]

**Screenshot:** [Add screenshot of Autopsy case setup]

---

## System Information

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Operating System Details

| Property | Value | Source |
|----------|-------|--------|
| OS Name | | Registry: SOFTWARE\Microsoft\Windows NT\CurrentVersion |
| OS Version | | |
| Build Number | | |
| Product Name | | |
| Registered Owner | | |
| Registered Organization | | |
| Install Date | | |
| System Root | | |
| Computer Name | | SYSTEM\ControlSet001\Control\ComputerName |
| Domain/Workgroup | | |
| Last Shutdown Time | | SYSTEM hive |
| Time Zone | | |

**Registry Analysis Tool:** [RegRipper/Registry Explorer]  
**Registry Hive Locations:** [Paths to SAM, SYSTEM, SOFTWARE, NTUSER.DAT]

**Screenshots:** [Add screenshots of system information]

---

## Hardware Configuration

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### System Hardware

| Component | Details | Source |
|-----------|---------|--------|
| Manufacturer | | Registry/ewfinfo |
| Model | | |
| BIOS Version | | |
| Processor | | |
| RAM | | |
| Hard Drive Model | | ewfinfo output |
| Hard Drive Serial | | |
| Hard Drive Capacity | | |
| MAC Address(es) | | |

---

## User Account Analysis

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### User Accounts

| SID | Username | Account Type | Profile Path | Created | Last Login | Notes |
|-----|----------|--------------|--------------|---------|------------|-------|
| | | Administrator/User | | | | |
| | Jean | | | | | Primary suspect |
| | | | | | | |

**Source:** SAM Registry Hive  
**Analysis Tool:** [Tool name]

### User Profile Analysis

**Primary User:** Jean  
**Profile Path:** [C:\Users\Jean or similar]

**Profile Contents:**
```
[List key directories found in user profile]
- Desktop
- Documents
- Downloads
- Pictures
- AppData
  - Local
  - Roaming
  - LocalLow
```

---

## Installed Software Inventory

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Installed Applications

| Application Name | Version | Install Date | Publisher | Install Location | Notes |
|------------------|---------|--------------|-----------|------------------|-------|
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |

**Source:** 
- Registry: SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall
- Registry: SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall

### Applications of Interest

Highlight applications relevant to investigation:

#### Communication Tools
- [ ] Email clients: [List]
- [ ] Instant messaging: [List]
- [ ] VoIP applications: [List]

#### Web Browsers
- [ ] Internet Explorer
- [ ] Firefox
- [ ] Chrome
- [ ] [Others]

#### File Transfer/Sharing
- [ ] FTP clients: [List]
- [ ] P2P applications: [List]
- [ ] Cloud storage clients: [List]
- [ ] USB/External storage tools: [List]

#### Security/Anti-forensics Tools
- [ ] Encryption software: [List]
- [ ] File wiping tools: [List]
- [ ] Anti-virus: [List]
- [ ] VPN clients: [List]

#### Compression/Archive Tools
- [ ] WinZip
- [ ] 7-Zip
- [ ] WinRAR
- [ ] [Others]

---

## File System Overview

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Directory Structure

**Root Directory Analysis:**

```
[Provide high-level directory tree]
C:\
├── Documents and Settings/
├── Program Files/
├── Program Files (x86)/
├── Users/
│   └── Jean/
│       ├── Desktop/
│       ├── Documents/
│       ├── Downloads/
│       ├── Pictures/
│       ├── Videos/
│       └── AppData/
├── Windows/
└── [Other directories]
```

### File System Statistics

| Metric | Value |
|--------|-------|
| Total Files | |
| Total Directories | |
| Allocated Files | |
| Deleted Files (recoverable) | |
| Hidden Files | |
| System Files | |
| Encrypted Files | |
| Compressed Files | |

**Source:** Autopsy / TSK commands

---

## Timeline Overview

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Temporal Analysis - High Level

**Active Period Analysis:**

| Period | Activity Level | Notes |
|--------|----------------|-------|
| Earliest file timestamp | | |
| Latest file timestamp | | |
| Installation date | | |
| Last boot time | | |
| Last user activity | | |
| Incident timeframe | | |

**Note:** Detailed timeline analysis in Phase 3

---

## Document and File Analysis

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### File Type Distribution

| File Type | Count | Total Size | Notes |
|-----------|-------|------------|-------|
| Documents (.doc, .docx, .pdf) | | | |
| Spreadsheets (.xls, .xlsx) | | | **Priority - incident involved spreadsheet** |
| Images (.jpg, .png, .gif) | | | |
| Videos (.mp4, .avi) | | | |
| Archives (.zip, .rar, .7z) | | | |
| Executables (.exe, .dll) | | | |
| Email files (.pst, .ost, .eml) | | | |
| Database files | | | |
| [Other types] | | | |

### Files of Interest - Initial Identification

**Spreadsheet Files Found:**

| Filename | Path | Size | Created | Modified | Accessed | Hash | Notes |
|----------|------|------|---------|----------|----------|------|-------|
| | | | | | | | Possible incident file |
| | | | | | | | |

**Files with "salary" or related keywords:**

| Filename | Path | Type | Date Modified | Notes |
|----------|------|------|---------------|-------|
| | | | | |

---

## Email Artifact Identification

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Email Client Detection

| Email Client | Installed | Data Files Found | Location | Notes |
|--------------|-----------|------------------|----------|-------|
| Outlook | ☐ Yes ☐ No | .pst/.ost files | | |
| Thunderbird | ☐ Yes ☐ No | mbox/profile | | |
| Windows Mail | ☐ Yes ☐ No | | | |
| [Other] | ☐ Yes ☐ No | | | |

### Email Data Files

| File | Path | Size | Format | Status |
|------|------|------|--------|--------|
| | | | PST/OST/mbox | ☐ Analyzed in Phase 3 |

---

## Web Browser Artifact Identification

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Browser Profiles Found

| Browser | Profile Path | Last Used | Size | Notes |
|---------|--------------|-----------|------|-------|
| | | | | |
| | | | | |

### Browser Artifact Files

| Artifact Type | File | Path | Records Found | Status |
|---------------|------|------|---------------|--------|
| History | | | | ☐ To analyze |
| Cookies | | | | ☐ To analyze |
| Cache | | | | ☐ To analyze |
| Downloads | | | | ☐ To analyze |
| Bookmarks | | | | ☐ To analyze |
| Form data | | | | ☐ To analyze |

---

## USB and External Device History

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### USB Device Registry Analysis

**Registry Key:** `SYSTEM\CurrentControlSet\Enum\USBSTOR`

| Device | Vendor | Product | Serial Number | First Connected | Last Connected | Notes |
|--------|--------|---------|---------------|-----------------|----------------|-------|
| | | | | | | |
| | | | | | | |

**Tool Used:** [USBDeview / Registry analysis]

---

## Network Configuration

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Network Interfaces

| Interface | Type | MAC Address | IP Configuration | Notes |
|-----------|------|-------------|------------------|-------|
| | Ethernet/WiFi | | DHCP/Static | |

### Network Connections History

**Registry Location:** `SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList`

| Network Name | First Connected | Last Connected | Type | Notes |
|--------------|-----------------|----------------|------|-------|
| | | | WiFi/Wired | |

---

## Deleted File Analysis - Preliminary

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Recycle Bin Contents

**Path:** `C:\$Recycle.Bin\[SID]`

| Original Filename | Deletion Date | Size | File Type | Recovered | Notes |
|-------------------|---------------|------|-----------|-----------|-------|
| | | | | ☐ | |
| | | | | ☐ | |

### Unallocated Space Analysis

**Method:** File carving with PhotoRec/Scalpel  
**Status:** ☐ Not Started ☐ In Progress ☐ Complete

**Results Summary:**
- Carved Files: [Count]
- File Types Recovered: [List]
- Analysis Status: ☐ To be analyzed in Phase 3

---

## Search Terms - Initial Keyword Search

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Keywords Related to Incident

| Keyword/Phrase | Hits | Notes |
|----------------|------|-------|
| salary | | |
| employee | | |
| confidential | | |
| spreadsheet | | |
| .xlsx | | |
| [Competitor name] | | |
| upload | | |
| send | | |
| email | | |
| attachment | | |

**Search Tool:** Autopsy Keyword Search / grep  
**Search Scope:** ☐ Allocated ☐ Unallocated ☐ Slack Space

---

## Encryption and Anti-Forensics Indicators

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Encryption Software

| Software | Found | Location | Notes |
|----------|-------|----------|-------|
| TrueCrypt/VeraCrypt | ☐ | | |
| BitLocker | ☐ | | |
| PGP/GPG | ☐ | | |
| [Other] | ☐ | | |

### Encrypted Files

| File | Path | Encryption Type | Status |
|------|------|-----------------|--------|
| | | | ☐ Decrypted ☐ Unable to decrypt |

### File Wiping Tools

| Tool | Found | Evidence of Use | Notes |
|------|-------|-----------------|-------|
| CCleaner | ☐ | ☐ | |
| Eraser | ☐ | ☐ | |
| BleachBit | ☐ | ☐ | |
| [Other] | ☐ | ☐ | |

---

## Prefetch Analysis

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

**Path:** `C:\Windows\Prefetch`

### Prefetch Files of Interest

| Application | Prefetch File | Run Count | Last Executed | Notes |
|-------------|---------------|-----------|---------------|-------|
| | .pf | | | |
| | .pf | | | |

**Tool:** PECmd / WinPrefetchView

---

## Jump Lists and Recent Files

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

**Location:** `C:\Users\[username]\AppData\Roaming\Microsoft\Windows\Recent`

### Recently Accessed Files

| File | Application | Last Accessed | Path | Notes |
|------|-------------|---------------|------|-------|
| | | | | |

---

## Windows Event Logs

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Event Log Files Found

| Log File | Path | Size | Date Range | Status |
|----------|------|------|------------|--------|
| Security.evtx | | | | ☐ To analyze |
| System.evtx | | | | ☐ To analyze |
| Application.evtx | | | | ☐ To analyze |

**Note:** Detailed event log analysis in Phase 3

---

## Initial Findings Summary

**Compiled by:** [Team Member Name]  
**Date:** [Date]

### Key Observations

1. **System Profile:**
   - [OS version, patch level, configuration]

2. **User Activity:**
   - [Primary user: Jean]
   - [Other accounts if any]

3. **Installed Software:**
   - [Communication tools found]
   - [File transfer capabilities]
   - [Any suspicious or unusual software]

4. **Files of Interest:**
   - [Spreadsheet files found]
   - [Email archives]
   - [Deleted files]

5. **External Connections:**
   - [USB devices]
   - [Network connections]

6. **Potential Evidence Locations:**
   - [List of directories/files to focus on in deep analysis]

### Preliminary Questions

1. [Question based on initial findings]
2. [Question based on initial findings]
3. [Question based on initial findings]

### Recommended Focus Areas for Phase 3

- [ ] Detailed timeline analysis
- [ ] Email communication review
- [ ] Web browser history analysis
- [ ] File transfer artifact examination
- [ ] Deleted file recovery and analysis
- [ ] Registry deep dive
- [ ] [Other specific areas]

---

## Initial Assessment Checklist

- [ ] Autopsy case created and ingested
- [ ] System information documented
- [ ] User accounts identified
- [ ] Installed software inventoried
- [ ] File system structure mapped
- [ ] File type analysis completed
- [ ] Email artifacts identified
- [ ] Browser artifacts identified
- [ ] USB device history extracted
- [ ] Deleted files preliminarily analyzed
- [ ] Keyword searches conducted
- [ ] Encryption indicators checked
- [ ] Prefetch files analyzed
- [ ] Recent file activity reviewed
- [ ] Event logs located
- [ ] Initial findings documented
- [ ] Phase 3 priorities identified

---

## Screenshots

**Location:** [Path to screenshots folder]

Required screenshots:
- [ ] Autopsy case overview
- [ ] Directory tree structure
- [ ] System information
- [ ] User account list
- [ ] Installed programs list
- [ ] File type distribution
- [ ] Spreadsheet files found
- [ ] USB device registry entries
- [ ] [Other relevant screens]

---

## Notes and Observations

[Add any additional observations, anomalies, or questions that arose during initial assessment]

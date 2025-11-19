# Tool Installation and Configuration Guide

## Overview
This guide provides step-by-step instructions for installing and configuring all forensic tools needed for the M57-Jean investigation.

**Prepared by:** [Team Member Name]  
**Date:** [Date]  
**Last Updated:** [Date]

---

## Operating System Preparation

### Recommended Platform
- [ ] **Option 1:** SIFT Workstation (SANS Investigative Forensic Toolkit)
- [ ] **Option 2:** Kali Linux (with forensics tools)
- [ ] **Option 3:** Windows with individual tool installation
- [ ] **Option 4:** Ubuntu/Debian with forensics packages

**Selected Platform:** [Platform Name]  
**Version:** [Version Number]  
**Installed By:** [Team Member Name]  
**Installation Date:** [Date]

---

## Core Forensic Tools

### 1. Autopsy / The Sleuth Kit

**Purpose:** Primary disk analysis and file system examination

**Installation:**
```bash
# Linux (Debian/Ubuntu)
sudo apt-get update
sudo apt-get install autopsy sleuthkit

# Or download from: https://www.autopsy.com/download/
```

**Configuration:**
```
[Add configuration steps]
```

**Verification:**
```bash
# Test commands:
autopsy --version
mmls --version
fls --version
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 2. FTK Imager

**Purpose:** Evidence verification and imaging

**Installation:**
- Download from: https://www.exterro.com/ftk-imager
- [Installation steps]

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 3. Bulk Extractor

**Purpose:** Feature extraction (emails, URLs, credit cards, etc.)

**Installation:**
```bash
# Linux
sudo apt-get install bulk-extractor

# Or build from source: https://github.com/simsong/bulk_extractor
```

**Verification:**
```bash
bulk_extractor --version
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 4. Registry Analysis Tools

#### RegRipper

**Purpose:** Windows Registry analysis

**Installation:**
```bash
# Download from: https://github.com/keydet89/RegRipper3.0
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

#### Registry Explorer (Eric Zimmerman)

**Installation:**
- Download from: https://ericzimmerman.github.io/

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 5. Timeline Analysis Tools

#### log2timeline / Plaso

**Purpose:** Super timeline creation

**Installation:**
```bash
# Linux
sudo apt-get install plaso-tools

# Or via pip:
pip install plaso
```

**Verification:**
```bash
log2timeline.py --version
psort.py --version
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 6. Email Analysis Tools

#### PST Viewer / readpst

**Purpose:** Outlook PST file analysis

**Installation:**
```bash
# Linux
sudo apt-get install pst-utils

# For GUI: download PST Viewer Lite
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 7. Web Browser Forensics

#### Hindsight

**Purpose:** Chrome/Chromium browser analysis

**Installation:**
```bash
pip install pyhindsight
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

#### Browser History Viewer

**Installation:**
- [Installation instructions]

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 8. File Carving Tools

#### PhotoRec / TestDisk

**Purpose:** Deleted file recovery

**Installation:**
```bash
# Linux
sudo apt-get install testdisk

# Windows: download from https://www.cgsecurity.org/
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

#### Scalpel

**Installation:**
```bash
sudo apt-get install scalpel
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 9. Network Analysis Tools

#### Wireshark

**Purpose:** PCAP analysis (if network captures available)

**Installation:**
```bash
# Linux
sudo apt-get install wireshark

# Windows: download from https://www.wireshark.org/
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 10. Hash Calculation Tools

#### md5sum / sha256sum

**Verification:**
```bash
md5sum --version
sha256sum --version
```

**Status:** ☐ Available ☐ Tested ☐ Working

#### HashMyFiles (Windows)

**Installation:**
- Download from: https://www.nirsoft.net/utils/hash_my_files.html

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 11. Metadata Extraction

#### ExifTool

**Purpose:** File metadata extraction

**Installation:**
```bash
# Linux
sudo apt-get install libimage-exiftool-perl

# Windows: download from https://exiftool.org/
```

**Verification:**
```bash
exiftool -ver
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 12. String Search Tools

#### grep / strings

**Verification:**
```bash
grep --version
strings --version
```

**Status:** ☐ Available ☐ Tested ☐ Working

---

### 13. Disk Image Mounting

#### ewf-tools (libewf)

**Purpose:** Mount EnCase E01 images

**Installation:**
```bash
# Linux
sudo apt-get install ewf-tools libewf-dev

# For mounting:
sudo apt-get install xmount
```

**Verification:**
```bash
ewfinfo --version
ewfmount --version
```

**Status:** ☐ Installed ☐ Tested ☐ Working  
**Installed By:** [Name] on [Date]

---

### 14. Documentation Tools

#### Markdown Editor
- [ ] VS Code with Markdown extensions
- [ ] Obsidian
- [ ] Typora
- [ ] [Other]

**Selected:** [Tool Name]  
**Status:** ☐ Installed ☐ Configured

#### Screenshot Tools
- [ ] Flameshot (Linux)
- [ ] Greenshot (Windows)
- [ ] Snipping Tool
- [ ] [Other]

**Selected:** [Tool Name]  
**Status:** ☐ Installed ☐ Configured

---

## Optional/Advanced Tools

### Volatility Framework
**Purpose:** Memory forensics (if memory dumps available)

**Installation:**
```bash
pip install volatility3
```

**Status:** ☐ Installed ☐ Tested ☐ Working (Optional)

### YARA
**Purpose:** Pattern matching for malware detection

**Installation:**
```bash
sudo apt-get install yara
```

**Status:** ☐ Installed ☐ Tested ☐ Working (Optional)

---

## Testing Procedures

### Basic Tool Test Plan

1. **Autopsy Test:**
   ```
   - [ ] Open Autopsy
   - [ ] Create new case
   - [ ] Test E01 file import
   - [ ] Navigate file system
   ```

2. **TSK Command Test:**
   ```bash
   # Test with the E01 file
   mmls nps-2008-jean.E01
   fsstat -o [offset] nps-2008-jean.E01
   ```

3. **Hash Verification Test:**
   ```bash
   md5sum nps-2008-jean.E01
   sha256sum nps-2008-jean.E01
   ```

---

## Tool Compatibility Matrix

| Tool | Windows | Linux | macOS | Notes |
|------|---------|-------|-------|-------|
| Autopsy | ✓ | ✓ | ✓ | |
| FTK Imager | ✓ | ✗ | ✗ | Windows only |
| Bulk Extractor | ✓ | ✓ | ✓ | |
| RegRipper | ✓ | ✓ | ✓ | Perl-based |
| Plaso | ✓ | ✓ | ✓ | |
| ExifTool | ✓ | ✓ | ✓ | |

---

## Troubleshooting

### Common Issues and Solutions

**Issue:** Cannot open E01 file in Autopsy  
**Solution:** 
- Ensure both .E01 and .E02 files are in the same directory
- Check libewf is properly installed
- [Add your solutions]

**Issue:** [Issue description]  
**Solution:** [Solution]

---

## Installation Checklist

- [ ] All core tools installed
- [ ] Tools tested with sample data
- [ ] E01 files can be accessed
- [ ] Hash calculation verified
- [ ] Timeline tools functional
- [ ] Registry analysis tools working
- [ ] Browser forensics tools ready
- [ ] File carving tools tested
- [ ] Documentation tools configured
- [ ] Team trained on tool usage

---

## Tool Usage Documentation

**Location of tool manuals:** [Path/URL]  
**Team training completed:** [Date]  
**Primary tool operator:** [Name]

---

## Notes

[Add any installation issues, workarounds, or special configurations]

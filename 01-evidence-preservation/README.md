# Phase 1: Evidence Preservation

## Overview
This phase documents the acquisition, verification, and preservation of digital evidence for the M57-Jean investigation. All activities must maintain forensic integrity and proper chain of custody.

---

## Evidence Receipt and Documentation

**Evidence Custodian:** [Team Member Name]  
**Date Received:** [Date]  
**Witness:** [Team Member Name]

### Evidence Source

**Provider:** Digital Corpora  
**Source URL:** https://digitalcorpora.org/corpora/scenarios/m57-jean/  
**Evidence Type:** Disk image (EnCase E01 format)  
**Original Case:** M57-Jean (2008 NPS scenario)

---

## Evidence Inventory

### Primary Evidence Files

| Item # | Filename | File Type | Size (Bytes) | Status |
|--------|----------|-----------|--------------|--------|
| 001 | jeanm57.E01 | EnCase Image (Part 1) | | ☑ Received |
| 002 | jeanm57.E02 | EnCase Image (Part 2) | | ☑ Received |

### Supporting Materials

| Item # | Filename | Description | Status |
|--------|----------|-------------|--------|
| S-001 | M57-Jean.pdf | Case scenario presentation | ☐ Received |
| S-002 | [Other materials] | | ☐ Received |

---

## Evidence Integrity Verification

**Verified by:** [Team Member Name]  
**Date:** [Date]  
**Method:** Cryptographic hash comparison

### Hash Values - nps-2008-jean.E01

| Algorithm | Computed Hash | Published/Expected Hash | Match |
|-----------|---------------|-------------------------|-------|
| MD5 | | | ☐ |
| SHA-1 | | | ☐ |
| SHA-256 | | | ☐ |

**Verification Command:**
```bash
md5sum jeanm57.E01
sha1sum jeanm57.E01
sha256sum jeanm57.E01
```

**Output:**
```
[Paste hash output here]




```

### Hash Values - nps-2008-jean.E02

| Algorithm | Computed Hash | Published/Expected Hash | Match |
|-----------|---------------|-------------------------|-------|
| MD5 | | | ☐ |
| SHA-1 | | | ☐ |
| SHA-256 | | | ☐ |

**Verification Command:**
```bash
md5sum jeanm57.E02
sha1sum jeanm57.E02
sha256sum jeanm57.E02
```

**Output:**
```
[Paste hash output here]




```

---

## EnCase Image Integrity Verification

**Verified by:** [Team Member Name]  
**Date:** [Date]

### Using ewfinfo

**Command:**
```bash
ewfinfo nps-2008-jean.E01
```

**Output:**
```
[Paste ewfinfo output here - should show internal hash verification]









```

**Internal Hash Verification:** ☐ PASSED ☐ FAILED

---

## Evidence Storage

### Storage Locations

| Location Type | Path/Location | Responsible Party | Status |
|---------------|---------------|-------------------|--------|
| Original Evidence | | | ☐ Secured |
| Working Copy | | | ☐ Created |
| Backup Copy 1 | | | ☐ Created |
| Backup Copy 2 | | | ☐ Created |

### Storage Security Measures

- [ ] Write protection enabled on original evidence
- [ ] Access restricted to authorized team members
- [ ] Storage media encrypted (if applicable)
- [ ] Backups stored in separate physical location
- [ ] All copies hash-verified

**Storage Notes:**
```
[Add notes about storage configuration, access controls, etc.]


```

---

## Working Copy Creation

**Created by:** [Team Member Name]  
**Date:** [Date]  
**Method:** File system copy with verification

### Copy Procedure

**Command Used:**
```bash
# Example copy command
cp nps-2008-jean.E01 /path/to/working/directory/
cp nps-2008-jean.E02 /path/to/working/directory/

# Or using rsync for verification:
rsync -av --progress nps-2008-jean.E0* /path/to/working/directory/
```

### Working Copy Verification

| File | Original Hash (SHA-256) | Working Copy Hash (SHA-256) | Match |
|------|------------------------|----------------------------|-------|
| nps-2008-jean.E01 | | | ☐ |
| nps-2008-jean.E02 | | | ☐ |

**Verification Status:** ☐ VERIFIED ☐ FAILED

---

## Disk Image Analysis

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Image Information

**Tool Used:** ewfinfo / FTK Imager / Autopsy

**Command:**
```bash
ewfinfo nps-2008-jean.E01 > ewfinfo-output.txt
```

### Image Metadata

| Property | Value |
|----------|-------|
| Case Number | |
| Description | |
| Examiner Name | |
| Evidence Number | |
| Notes | |
| Acquisition Date | |
| System Date | |
| Operating System | |
| Media Type | |
| Media Size | |
| Sectors | |
| Sector Size | |
| Compression | |

**Full ewfinfo Output:** [See evidence-files/ewfinfo-output.txt]

---

## Disk Structure Analysis

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Partition Layout

**Command:**
```bash
mmls nps-2008-jean.E01
```

**Output:**
```
[Paste mmls output here]






```

### Partition Details

| Partition # | Start Sector | End Sector | Length | Description | File System |
|-------------|--------------|------------|--------|-------------|-------------|
| | | | | | |
| | | | | | |

---

## File System Information

**Analyzed by:** [Team Member Name]  
**Date:** [Date]

### Primary Partition Analysis

**Command:**
```bash
fsstat -o [offset] nps-2008-jean.E01
```

**Output:**
```
[Paste fsstat output here]







```

### File System Summary

| Property | Value |
|----------|-------|
| File System Type | |
| Volume Name | |
| Volume Serial Number | |
| Cluster Size | |
| Total Clusters | |
| First Cluster of Root | |
| Creation Time | |
| Last Mount Time | |
| Last Written Time | |

---

## Evidence Acquisition Log

| Date/Time | Action | Performed By | Tool/Method | Result | Notes |
|-----------|--------|--------------|-------------|--------|-------|
| | Downloaded E01/E02 files | | Web browser | | |
| | Verified file hashes | | md5sum/sha256sum | | |
| | Verified E01 integrity | | ewfinfo | | |
| | Created working copy | | cp/rsync | | |
| | Verified working copy | | Hash comparison | | |
| | Analyzed disk structure | | mmls | | |
| | Analyzed file system | | fsstat | | |

---

## Evidence Preservation Checklist

- [ ] Evidence files downloaded from official source
- [ ] Download integrity verified with hash values
- [ ] Original evidence stored in secure location
- [ ] Working copies created and verified
- [ ] Backup copies created and stored separately
- [ ] All copies hash-verified
- [ ] E01 internal integrity verified
- [ ] Disk structure documented
- [ ] File system metadata extracted
- [ ] Write protection confirmed for originals
- [ ] Chain of custody forms completed
- [ ] Evidence custodian assigned
- [ ] Access log created

---

## Access Control

### Authorized Personnel

| Name | Role | Access Level | Signature | Date |
|------|------|--------------|-----------|------|
| | | Read/Write | | |
| | | Read Only | | |
| | | Read Only | | |
| | | Read Only | | |
| | | Read Only | | |

---

## Issues and Resolutions

| Date | Issue Description | Resolution | Resolved By |
|------|-------------------|------------|-------------|
| | | | |

---

## Sign-off

**Evidence Custodian:** _________________________ Date: _________  
**Lead Investigator:** _________________________ Date: _________  
**Witness:** _________________________ Date: _________

---

## Notes

[Add any additional observations, anomalies, or important information about the evidence]

# Phase 3: Deep Analysis

## Overview
This phase involves comprehensive forensic analysis of Jean's laptop to identify how the confidential data was exfiltrated and determine Jean's involvement or victimization.

**Phase Lead:** Adham Ahmed (Lead Investigator)  
**Start Date:** [Date]  
**Completion Date:** [Date]

---

## Analysis Modules

This phase is divided into specialized analysis modules:

1. [Timeline Analysis](./timeline-analysis.md) - Comprehensive event reconstruction
2. [File System Forensics](./file-system-analysis.md) - File creation, modification, deletion
3. [Registry Analysis](./registry-analysis.md) - System and user activity from registry
4. [Email Analysis](./email-analysis.md) - Email communication examination
5. [Web Browser Forensics](./web-browser-analysis.md) - Internet activity analysis
6. [Network Artifacts](./network-analysis.md) - Network connections and transfers
7. [USB and External Devices](./usb-device-analysis.md) - External storage analysis
8. [Deleted File Recovery](./deleted-file-analysis.md) - File carving and recovery
9. [User Activity Analysis](./user-activity-analysis.md) - Prefetch, jump lists, recent files
10. [Malware and IOC Analysis](./malware-ioc-analysis.md) - Compromise indicators

---

## Investigation Focus

### Primary Objectives

1. **Locate the confidential spreadsheet (m57plan.xlsx)**
   - Find all instances (original, copies, deleted)
   - Identify creation, modification, and access times
   - Determine file lineage and versions
   - Verify hash: MD5 e23a4eb7f2562f53e88c9dca8b26a153

2. **Identify exfiltration method**
   - Email attachments (especially to tuckgeorge@gmail.com - suspected phishing)
   - Web uploads to competitor's technical support forum
   - USB/external storage
   - Cloud storage
   - Network file transfer (FTP, SMB, etc.)
   - Other methods

3. **Determine user intent and resolve conflicting statements**
   - Jean's claim: Alison requested the spreadsheet via email
   - Alison's claim: Never asked for or received the spreadsheet
   - Evidence of phishing attack vs. deliberate action
   - Communication with competitors or external parties
   - Evidence of deception or cover-up attempts

4. **Establish timeline**
   - When did Jean create m57plan.xlsx
   - When was it accessed by Jean or others
   - When was it exfiltrated to competitor's website
   - Related events before and after (phishing emails, suspicious logins)
   - Identify any involvement from "Bob" (mentioned in case notes)

---

## Analysis Coordination

### Team Assignment

| Analysis Module | Team Member | Start Date | Status | Completion Date |
|-----------------|-------------|------------|--------|-----------------|
| Timeline Analysis | Mohamed El-Awady | | ☐ | |
| File System Forensics | Abdullah Hegazi | | ☐ | |
| Registry Analysis | Abdullah Hegazi | | ☐ | |
| Email Analysis | Hannen Abu Bakr | | ☐ | |
| Web Browser Forensics | Hannen Abu Bakr | | ☐ | |
| Network Artifacts | Hannen Abu Bakr | | ☐ | |
| USB Devices | Ahmed Hani | | ☐ | |
| Deleted Files | Abdullah Hegazi | | ☐ | |
| User Activity | Mohamed El-Awady | | ☐ | |
| Malware/IOC | Adham Ahmed | | ☐ | |

### Cross-Module Coordination

**Coordination Meetings:**
- Week 1: Initial findings share
- Week 2: Mid-analysis sync
- Week 3: Findings correlation

**Shared Findings Document:** [Path]

---

## Analysis Tools Matrix

| Analysis Module | Primary Tools | Backup Tools |
|-----------------|---------------|--------------|
| Timeline | log2timeline/Plaso, Autopsy | Excel, Timeline Explorer |
| File System | Autopsy, TSK (fls, icat) | FTK Imager |
| Registry | RegRipper, Registry Explorer | Registry Viewer |
| Email | readpst, Outlook PST Viewer | MBOX Reader, MailXaminer |
| Web Browser | Hindsight, BrowsingHistoryView | DB Browser for SQLite |
| Network | Wireshark, NetworkMiner | NetWitness |
| USB Devices | USBDeview, Registry analysis | Custom scripts |
| Deleted Files | PhotoRec, Scalpel | Autopsy carving |
| User Activity | PECmd, JLECmd | WinPrefetchView |
| Malware/IOC | YARA, VirusTotal | ClamAV, Custom analysis |

---

## Key Evidence Tracking

### Spreadsheet Tracking

**Target File:** Confidential employee salary spreadsheet

| Instance # | Filename | Path | Hash | Created | Modified | Accessed | Status | Notes |
|------------|----------|------|------|---------|----------|----------|--------|-------|
| 1 | | | | | | | ☐ Found | Original file |
| 2 | | | | | | | ☐ Found | Copy/version |
| 3 | | | | | | | ☐ Found | Deleted instance |
| 4 | | | | | | | ☐ Found | Email attachment |
| 5 | | | | | | | ☐ Found | Temp file |

### Exfiltration Evidence Tracking

| Evidence Type | Description | Source | Date/Time | Analyst | Status |
|---------------|-------------|--------|-----------|---------|--------|
| Email | | Email client | | | ☐ |
| Web upload | | Browser history | | | ☐ |
| USB transfer | | USB logs | | | ☐ |
| Cloud sync | | Application logs | | | ☐ |
| Network transfer | | Network artifacts | | | ☐ |

---

## Artifact Collection Log

| Date | Artifact Type | Location | Extracted By | Tool Used | Output Location | Notes |
|------|---------------|----------|--------------|-----------|-----------------|-------|
| | Registry hive | | | FTK/icat | | |
| | Email PST | | | icat | | |
| | Browser history | | | DB export | | |
| | Prefetch files | | | PECmd | | |
| | Event logs | | | icat | | |
| | [Other] | | | | | |

---

## Analysis Status Dashboard

### Module Completion Status

| Module | Progress | Key Findings | Blockers | Est. Completion |
|--------|----------|--------------|----------|-----------------|
| Timeline | __% | | | |
| File System | __% | | | |
| Registry | __% | | | |
| Email | __% | | | |
| Web Browser | __% | | | |
| Network | __% | | | |
| USB Devices | __% | | | |
| Deleted Files | __% | | | |
| User Activity | __% | | | |
| Malware/IOC | __% | | | |

**Overall Phase 3 Progress:** ____%

---

## Interim Findings

### Critical Discoveries

**Date:** [Date]  
**Discovered By:** [Name]

1. **Finding:**
   - Description:
   - Evidence Location:
   - Significance:
   - Related Artifacts:

2. **Finding:**
   - Description:
   - Evidence Location:
   - Significance:
   - Related Artifacts:

---

## Hypotheses Under Investigation

| Hypothesis | Supporting Evidence | Contradicting Evidence | Status |
|------------|-------------------|------------------------|--------|
| Jean deliberately sent file to competitor | | | ☐ Testing |
| Jean was phished/compromised | | | ☐ Testing |
| File was stolen via malware | | | ☐ Testing |
| File was accessed via unauthorized access | | | ☐ Testing |
| [Other hypothesis] | | | ☐ Testing |

---

## Analysis Challenges and Solutions

| Challenge | Impact | Solution | Status |
|-----------|--------|----------|--------|
| | | | ☐ |
| | | | ☐ |

---

## Peer Review Checkpoints

| Date | Reviewer | Module Reviewed | Issues Found | Resolution |
|------|----------|-----------------|--------------|------------|
| | | | | |
| | | | | |

---

## Deep Analysis Checklist

### Timeline Analysis
- [ ] Super timeline created
- [ ] Timeline filtered for relevant dates
- [ ] Key events identified
- [ ] Temporal correlations noted
- [ ] Timeline exported for reporting

### File System Analysis
- [ ] Spreadsheet file(s) located
- [ ] File metadata extracted
- [ ] File versions identified
- [ ] Deleted instances found
- [ ] File access patterns documented

### Registry Analysis
- [ ] User activity extracted
- [ ] USB devices enumerated
- [ ] Network connections identified
- [ ] Recent documents parsed
- [ ] Application usage documented

### Email Analysis
- [ ] Email database(s) extracted
- [ ] Emails parsed and indexed
- [ ] Keyword searches conducted
- [ ] Attachments extracted
- [ ] Relevant communications identified

### Web Browser Analysis
- [ ] History database extracted
- [ ] URLs categorized
- [ ] Download history reviewed
- [ ] File upload evidence found
- [ ] Timeline integrated

### Network Analysis
- [ ] Network artifacts identified
- [ ] FTP/file transfer evidence sought
- [ ] Cloud service usage identified
- [ ] External connections documented

### USB Device Analysis
- [ ] All USB devices enumerated
- [ ] Connection timeline created
- [ ] Data transfer evidence sought
- [ ] Removable media files identified

### Deleted File Analysis
- [ ] File carving completed
- [ ] Recovered files categorized
- [ ] Relevant files identified
- [ ] Recovery documented

### User Activity Analysis
- [ ] Prefetch files analyzed
- [ ] Jump lists processed
- [ ] Recent files documented
- [ ] Application usage correlated

### Malware/IOC Analysis
- [ ] Malware scan completed
- [ ] Suspicious files investigated
- [ ] IOCs documented
- [ ] Compromise assessed

---

## Documentation Requirements

Each analysis module should produce:

1. **Detailed findings document** (in respective .md file)
2. **Evidence exports** (in ../evidence-files/)
3. **Screenshots** (in ../screenshots/phase3/)
4. **Tool outputs** (in ../tools-output/)
5. **Timeline entries** (for master timeline)

---

## Notes

[Add cross-cutting observations, team communications, and general notes about the analysis phase]

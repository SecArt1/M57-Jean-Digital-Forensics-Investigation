# M57-Jean Investigation - Project Index

Complete documentation reference for the M57-Jean data exfiltration investigation.

---

## Core Documentation

| Document | Purpose | Phase |
|----------|---------|-------|
| [README.md](./README.md) | Main project overview | All |
| [START-HERE.md](./START-HERE.md) | Quick start guide | 0 |
| PROJECT-INDEX.md | This file - complete document list | All |

---

## Phase 0: Case Initialization

| Document | Purpose |
|----------|---------|
| [00-case-initialization/README.md](./00-case-initialization/README.md) | Team setup, lab prep, case planning |
| [00-case-initialization/tool-installation-guide.md](./00-case-initialization/tool-installation-guide.md) | Forensic software installation instructions |

**Deliverables:**
- Team assignments
- Lab environment documentation
- Tool installation verification
- Case background research
- Investigation timeline

---

## Phase 1: Evidence Preservation

| Document | Purpose |
|----------|---------|
| [01-evidence-preservation/README.md](./01-evidence-preservation/README.md) | Evidence handling procedures |
| [01-evidence-preservation/chain-of-custody.md](./01-evidence-preservation/chain-of-custody.md) | Evidence tracking and access log |

**Deliverables:**
- Hash verification results
- Working copy documentation
- Chain of custody forms
- Disk structure analysis
- File system metadata

---

## Phase 2: Initial Assessment

| Document | Purpose |
|----------|---------|
| [02-initial-assessment/README.md](./02-initial-assessment/README.md) | First examination and triage |

**Deliverables:**
- Autopsy case setup
- System information
- User account analysis
- Installed software inventory
- File type distribution
- Initial keyword searches
- Preliminary findings

---

## Phase 3: Deep Analysis

| Document | Purpose |
|----------|---------|
| [03-deep-analysis/README.md](./03-deep-analysis/README.md) | Analysis coordination and overview |
| [03-deep-analysis/timeline-analysis.md](./03-deep-analysis/timeline-analysis.md) | Super timeline and event reconstruction |
| [03-deep-analysis/email-analysis.md](./03-deep-analysis/email-analysis.md) | Email communication examination |
| [03-deep-analysis/web-browser-analysis.md](./03-deep-analysis/web-browser-analysis.md) | Browser history and artifacts |

**Additional Analysis Modules** (create as needed):
- file-system-analysis.md - File system forensics
- registry-analysis.md - Windows Registry examination
- usb-device-analysis.md - USB and external device history
- deleted-file-analysis.md - File carving and recovery
- user-activity-analysis.md - Prefetch, jump lists, recent files
- malware-ioc-analysis.md - Malware and compromise indicators
- network-analysis.md - Network artifacts and connections

**Deliverables:**
- Super timeline (CSV)
- Email database exports
- Browser history exports
- Registry analysis reports
- Recovered deleted files
- USB device enumeration
- Network connection logs
- User activity timeline
- Malware scan results

---

## Phase 4: Findings Correlation

| Document | Purpose |
|----------|---------|
| [04-findings-correlation/README.md](./04-findings-correlation/README.md) | Evidence integration and analysis |

**Deliverables:**
- Master timeline
- Evidence correlation matrix
- Exfiltration method determination
- User intent analysis
- IOC list
- Data lineage analysis
- Alternative hypothesis testing
- Integrated findings summary

---

## Phase 5: Final Report

| Document | Purpose |
|----------|---------|
| [05-final-report/README.md](./05-final-report/README.md) | Report preparation and submission |
| [05-final-report/executive-summary.md](./05-final-report/executive-summary.md) | High-level summary for non-technical audience |

**Additional Report Documents** (create as needed):
- technical-report.md - Detailed technical findings
- conclusions-recommendations.md - Analysis and suggestions
- presentation-slides.md - Presentation outline
- appendices/ - Supporting documentation

**Deliverables:**
- Final investigation report (PDF)
- Executive summary
- Technical report
- Conclusions and recommendations
- Presentation slides
- Evidence package
- Team contributions document

---

## Supporting Directories

### evidence-files/
Store extracted evidence and exports:
- PST files
- Registry hives
- Browser databases
- Carved files
- Timeline exports
- Tool outputs

### screenshots/
Organized by phase:
- phase0-initialization/
- phase1-preservation/
- phase2-assessment/
- phase3-analysis/
- phase4-correlation/
- phase5-reporting/

### tools-output/
Raw tool outputs:
- autopsy-reports/
- plaso-timelines/
- regripper-output/
- bulk-extractor-output/
- [other tool outputs]

---

## Evidence Files (Not Included)

**Download from:** https://digitalcorpora.org/corpora/scenarios/m57-jean/

Required downloads:
- nps-2008-jean.E01
- nps-2008-jean.E02
- M57-Jean.pdf (optional scenario presentation)

---

## Templates and Forms

All documentation files serve as templates to be filled in during investigation:
- Use checkboxes ☐ to track completion
- Fill in bracketed fields [like this]
- Add screenshots where indicated
- Complete all tables with your findings
- Replace example data with actual findings

---

## File Naming Conventions

**Screenshots:**
```
[YYYYMMDD]-[PHASE]-[CATEGORY]-[DESCRIPTION]-[INITIALS].[ext]
Example: 20241119-P3-Timeline-Browser-History-JD.png
```

**Evidence Exports:**
```
[YYYYMMDD]-[TYPE]-[DESCRIPTION].[ext]
Example: 20241119-PST-Jean-Emails.pst
```

**Tool Outputs:**
```
[YYYYMMDD]-[TOOL]-[TARGET]-output.[ext]
Example: 20241119-regripper-SOFTWARE-output.txt
```

---

## Workflow Summary

```
Phase 0: Initialize
    ↓
Phase 1: Preserve Evidence
    ↓
Phase 2: Initial Assessment
    ↓
Phase 3: Deep Analysis (multiple parallel tracks)
    ├─ Timeline
    ├─ Email
    ├─ Browser
    ├─ File System
    ├─ Registry
    └─ [Other modules]
    ↓
Phase 4: Correlate Findings
    ↓
Phase 5: Final Report
    ↓
Submission
```

---

## Document Status Tracking

### Phase 0
- [ ] README.md
- [ ] tool-installation-guide.md

### Phase 1
- [ ] README.md
- [ ] chain-of-custody.md

### Phase 2
- [ ] README.md

### Phase 3
- [ ] README.md
- [ ] timeline-analysis.md
- [ ] email-analysis.md
- [ ] web-browser-analysis.md
- [ ] [Create additional modules as needed]

### Phase 4
- [ ] README.md

### Phase 5
- [ ] README.md
- [ ] executive-summary.md
- [ ] [Create additional report sections as needed]

---

## Quick Reference

### Most Important Documents

**Getting Started:**
1. START-HERE.md
2. 00-case-initialization/README.md

**Evidence Handling:**
1. 01-evidence-preservation/README.md
2. 01-evidence-preservation/chain-of-custody.md

**Analysis:**
1. 03-deep-analysis/timeline-analysis.md
2. 03-deep-analysis/email-analysis.md
3. 03-deep-analysis/web-browser-analysis.md

**Reporting:**
1. 05-final-report/executive-summary.md
2. 05-final-report/README.md

---

## External References

**Case Source:**
- https://digitalcorpora.org/corpora/scenarios/m57-jean/

**Tool Documentation:**
- Autopsy: https://www.autopsy.com/documentation/
- The Sleuth Kit: https://wiki.sleuthkit.org/
- Plaso: https://plaso.readthedocs.io/
- RegRipper: https://github.com/keydet89/RegRipper3.0

**Forensic Resources:**
- SANS Digital Forensics: https://www.sans.org/digital-forensics/
- Forensics Wiki: https://forensicswiki.xyz/

---

## Version Information

**Documentation Version:** 1.0  
**Created:** [Date]  
**Last Updated:** [Date]  
**Created By:** [Your Name/Team]

---

## Notes

This index will be updated as you create additional documentation specific to your investigation findings.

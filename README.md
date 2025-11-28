# M57-Jean Digital Forensics Investigation
## Case Documentation for Graduation Project

**Investigation Team:** Adham Ahmed, Ahmed Hani, Abdullah Hegazi, Mohamed El-Awady, Hannen Abu Bakr  
**Course:** Digital Forensics Training  
**Date Started:** [Date]  
**Date Completed:** [Date]  
**Case ID:** M57-CF-001

---

## Executive Summary

### Case Overview
This investigation examines the suspected data exfiltration incident at M57.biz, a web start-up company. A confidential spreadsheet (m57plan.xlsx) containing employee salaries and Social Security Numbers was discovered posted to a competitor's public technical support forum. The spreadsheet is confirmed to have originated from CFO Jean's computer.

### Investigation Scope
- **Subject:** Jean Jones (CFO, M57.biz)
- **Evidence:** Laptop disk image (jeanm57.E01 / jeanm57.E02 - EnCase E01 format)
- **Allegation:** Data exfiltration of confidential company documents
- **Subject's Claim:** Claims President Alison Smith requested the spreadsheet and asked her to email it
- **President's Statement:** Alison denies asking for or receiving the spreadsheet

### Key Questions
1. When did Jean create the m57plan.xlsx spreadsheet?
2. How did the spreadsheet get from Jean's computer to the competitor's website?
3. Was Jean complicit or was she victim of a phishing attack?
4. Who else from the company is involved in this incident?
5. What is the complete timeline of events leading to the data breach?

---

## Documentation Structure

This case documentation is organized into the following phases:

### Phase 0: Case Initialization
- Team assignments and roles
- Lab environment setup
- Evidence acquisition and verification

### Phase 1: Evidence Preservation
- Chain of custody documentation
- Forensic imaging verification
- Evidence integrity validation

### Phase 2: Initial Assessment
- Disk structure analysis
- File system examination
- Preliminary artifact identification

### Phase 3: Deep Analysis
- Timeline analysis
- File system forensics
- Registry analysis
- Network artifact analysis
- Email and communication analysis
- Web browser forensics
- Deleted file recovery

### Phase 4: Findings Correlation
- Event timeline construction
- Indicator of Compromise (IOC) identification
- Data exfiltration path mapping

### Phase 5: Reporting
- Technical findings report
- Executive summary
- Conclusions and recommendations

---

## Team Member Roles

| Team Member | Primary Responsibility | Secondary Responsibility |
|-------------|------------------------|--------------------------||
| Adham Ahmed | Lead Investigator / IR Team Head | Overall coordination, client liaison |
| Ahmed Hani | Evidence Custodian | Chain of custody, evidence integrity |
| Abdullah Hegazi | Artifact Analyst | File system, registry examination |
| Mohamed El-Awady | Timeline Analyst | Event reconstruction, temporal analysis |
| Hannen Abu Bakr | Communication Analyst | Email, browser, network analysis |

---

## Evidence Files

**Source:** Digital Corpora - M57-Jean Scenario  
**URL:** https://digitalcorpora.org/corpora/scenarios/m57-jean/

### Primary Evidence
- `jeanm57.E01` - EnCase disk image (Part 1)
- `jeanm57.E02` - EnCase disk image (Part 2)

### Exfiltrated File
- **Filename:** m57plan.xlsx
- **MD5:** e23a4eb7f2562f53e88c9dca8b26a153
- **SHA-256:** 34456b5f714dc9d8dd23c742d54c3f5f582ecb042bc1c4d3042b88203863779f

### Supporting Materials
- `M57-Jean.pdf` - Case scenario presentation

---

## Tools and Software Used

| Tool | Version | Purpose |
|------|---------|---------||
| Autopsy | | Disk image analysis and investigation |
| Sleuth Kit | | Command-line forensics toolkit |
| FTK Imager | | Forensic imaging and verification |
| Hex Editor | | Low-level file analysis |

---

## Investigation Timeline

**Planned Duration:** 4 weeks (flexible - can complete in 2 weeks or 1 week intensive)

**Week 1:** Setup, Preservation, Initial Assessment  
**Week 2:** Deep Analysis (Timeline, Email, Browser, File System)  
**Week 3:** Deep Analysis (Registry, Recovery), Correlation  
**Week 4:** Final Report, Presentation, Submission

| Date | Phase | Activity | Team Member |
|------|-------|----------|-------------|
| | | | |
| | | | |

---

## Key Findings Summary

### [To be completed during investigation]

1. 
2. 
3. 

---

## Document Index

- [00-case-initialization/](./00-case-initialization/) - Team setup and lab preparation
- [01-evidence-preservation/](./01-evidence-preservation/) - Chain of custody and integrity
- [02-initial-assessment/](./02-initial-assessment/) - First examination phase
- [03-deep-analysis/](./03-deep-analysis/) - Comprehensive forensic analysis
- [04-findings-correlation/](./04-findings-correlation/) - Timeline and IOC mapping
- [05-final-report/](./05-final-report/) - Complete investigation report
- [evidence-files/](./evidence-files/) - Raw evidence and exports
- [screenshots/](./screenshots/) - Investigation screenshots
- [tools-output/](./tools-output/) - Tool reports and logs

---

## References

1. Digital Corpora. (2009). M57-Jean Scenario. https://digitalcorpora.org/corpora/scenarios/m57-jean/
2. [Additional references to be added during investigation]

---

## Investigation Status

**Current Phase:** [Phase Name]  
**Completion:** [X]%  
**Last Updated:** [Date]

---

## Notes

[Team notes and observations to be added throughout investigation]

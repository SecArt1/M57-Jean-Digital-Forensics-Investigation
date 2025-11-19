# M57-Jean Investigation - Quick Start Guide

## Welcome!

This is your team's comprehensive documentation structure for investigating the M57-Jean data exfiltration case from Digital Corpora.

**Team Size:** 5 members  
**Purpose:** Graduation project for digital forensics training  
**Case:** M57-Jean laptop analysis - Data exfiltration investigation

---

## Quick Navigation

### 🚀 Start Here

1. **[README.md](./README.md)** - Main project overview
2. **[Phase 0: Case Initialization](./00-case-initialization/README.md)** - Team setup and lab prep
3. **Evidence Download:** https://digitalcorpora.org/corpora/scenarios/m57-jean/

### 📁 Project Structure

```
m57-jean-case/
├── README.md (You are here - main project overview)
├── START-HERE.md (This file - quick start guide)
├── PROJECT-INDEX.md (Complete document index)
│
├── 00-case-initialization/
│   ├── README.md (Team setup, lab environment)
│   └── tool-installation-guide.md (Software installation)
│
├── 01-evidence-preservation/
│   ├── README.md (Evidence handling procedures)
│   └── chain-of-custody.md (Evidence tracking)
│
├── 02-initial-assessment/
│   └── README.md (First examination of the disk image)
│
├── 03-deep-analysis/
│   ├── README.md (Analysis coordination)
│   ├── timeline-analysis.md (Event reconstruction)
│   ├── email-analysis.md (Email examination)
│   ├── web-browser-analysis.md (Browser forensics)
│   └── [other analysis modules as needed]
│
├── 04-findings-correlation/
│   └── README.md (Connecting all evidence)
│
├── 05-final-report/
│   ├── README.md (Report preparation)
│   └── executive-summary.md (High-level summary)
│
├── evidence-files/ (Store extracted evidence)
├── screenshots/ (Investigation screenshots)
└── tools-output/ (Tool reports and logs)
```

---

## Phase-by-Phase Guide

**Timeline:** 4 weeks (can be completed faster - 2 weeks or even 1 week with intensive work)

### Phase 0: Case Initialization (Week 1, Days 1-2)
**Goal:** Get organized and set up your lab environment

**Tasks:**
- [ ] Assign team roles (Lead, Evidence Custodian, Timeline Analyst, etc.)
- [ ] Set up forensic workstation(s)
- [ ] Install required software (see tool-installation-guide.md)
- [ ] Download evidence files (E01 and E02)
- [ ] Verify file hashes
- [ ] Hold team kickoff meeting

**Key Documents:**
- [00-case-initialization/README.md](./00-case-initialization/README.md)
- [00-case-initialization/tool-installation-guide.md](./00-case-initialization/tool-installation-guide.md)

---

### Phase 1: Evidence Preservation (Week 1, Days 3-4)
**Goal:** Properly secure and document evidence

**Tasks:**
- [ ] Verify evidence integrity (hash values)
- [ ] Create working copies
- [ ] Complete chain of custody forms
- [ ] Analyze disk structure (mmls, fsstat)
- [ ] Document all handling

**Key Documents:**
- [01-evidence-preservation/README.md](./01-evidence-preservation/README.md)
- [01-evidence-preservation/chain-of-custody.md](./01-evidence-preservation/chain-of-custody.md)

---

### Phase 2: Initial Assessment (Week 1, Days 5-7)
**Goal:** Understand the system and identify key evidence locations

**Tasks:**
- [ ] Create Autopsy case
- [ ] Run ingest modules
- [ ] Document system information
- [ ] Identify user accounts
- [ ] Inventory installed software
- [ ] Locate spreadsheet files
- [ ] Identify email and browser artifacts

**Key Documents:**
- [02-initial-assessment/README.md](./02-initial-assessment/README.md)

---

### Phase 3: Deep Analysis (Week 2-3)
**Goal:** Comprehensive forensic examination

**Tasks:**
- [ ] Create super timeline (log2timeline)
- [ ] Analyze email communications
- [ ] Examine browser history
- [ ] Extract registry artifacts
- [ ] Recover deleted files
- [ ] Analyze USB device history
- [ ] Examine network artifacts
- [ ] Search for malware/IOCs

**Key Documents:**
- [03-deep-analysis/README.md](./03-deep-analysis/README.md)
- [03-deep-analysis/timeline-analysis.md](./03-deep-analysis/timeline-analysis.md)
- [03-deep-analysis/email-analysis.md](./03-deep-analysis/email-analysis.md)
- [03-deep-analysis/web-browser-analysis.md](./03-deep-analysis/web-browser-analysis.md)

---

### Phase 4: Findings Correlation (Week 3, Days 5-7)
**Goal:** Connect all evidence and establish the complete narrative

**Tasks:**
- [ ] Build master timeline
- [ ] Correlate evidence across sources
- [ ] Determine exfiltration method
- [ ] Assess user intent
- [ ] Validate all findings
- [ ] Document evidence quality

**Key Documents:**
- [04-findings-correlation/README.md](./04-findings-correlation/README.md)

---

### Phase 5: Final Report (Week 4)
**Goal:** Document and present findings

**Tasks:**
- [ ] Write executive summary
- [ ] Complete technical report
- [ ] Prepare conclusions and recommendations
- [ ] Create presentation slides
- [ ] Compile evidence package
- [ ] Peer review
- [ ] Submit final deliverables

**Key Documents:**
- [05-final-report/README.md](./05-final-report/README.md)
- [05-final-report/executive-summary.md](./05-final-report/executive-summary.md)

---

## Team Roles (Suggested)

Assign these roles among your 5 team members:

| Role | Responsibilities |
|------|------------------|
| **Lead Investigator** | Overall coordination, final report review, presentation coordination |
| **Evidence Custodian** | Chain of custody, evidence integrity, file management |
| **Timeline Analyst** | Super timeline creation, temporal analysis, event correlation |
| **Artifact Analyst** | File system, registry, user activity analysis |
| **Communication Analyst** | Email, browser, network artifact analysis |

*Note: All members should participate in all phases, but each has primary responsibility for their area.*

---

## Key Tools You'll Need

### Essential Tools
- **Autopsy** - Primary analysis platform
- **The Sleuth Kit (TSK)** - Command-line forensics
- **log2timeline/Plaso** - Timeline creation
- **FTK Imager** - Hash verification
- **RegRipper** - Registry analysis

### Email Analysis
- **readpst** - PST file extraction
- **Outlook PST Viewer** - PST examination

### Browser Forensics
- **Hindsight** - Chrome analysis
- **DB Browser for SQLite** - Database examination

### File Recovery
- **PhotoRec** - File carving
- **Scalpel** - File carving

*Full installation guide: [00-case-initialization/tool-installation-guide.md](./00-case-initialization/tool-installation-guide.md)*

---

## Evidence Files to Download

**Source:** https://digitalcorpora.org/corpora/scenarios/m57-jean/

**Required Files:**
1. `nps-2008-jean.E01` (Part 1 of disk image)
2. `nps-2008-jean.E02` (Part 2 of disk image)

**Important:** Both files must be in the same directory!

**Supporting Materials:**
- `M57-Jean.pdf` (Case scenario presentation)

---

## Investigation Checklist

**Standard 4-week timeline** (adaptable for 2-week or 1-week intensive investigation)

### Week 1: Setup & Initial Assessment
- [ ] Team organized and roles assigned
- [ ] Lab environment ready
- [ ] Tools installed and tested
- [ ] Evidence downloaded and verified
- [ ] Hashes verified
- [ ] Working copies created
- [ ] Chain of custody started
- [ ] Autopsy case created
- [ ] Initial assessment complete
- [ ] System profile documented
- [ ] Key files located

### Week 2: Deep Analysis (Part 1)
- [ ] Super timeline created
- [ ] Email analysis complete
- [ ] Browser analysis complete
- [ ] File system analysis done

### Week 3: Deep Analysis (Part 2) & Correlation
- [ ] Registry analysis complete
- [ ] Deleted files recovered
- [ ] All analysis modules done
- [ ] Evidence correlated
- [ ] Exfiltration method identified
- [ ] User intent determined
- [ ] Findings validated

### Week 4: Final Report & Submission
- [ ] Executive summary written
- [ ] Technical report complete
- [ ] Conclusions documented
- [ ] Presentation prepared
- [ ] Peer review done
- [ ] Final submission ready

---

## Tips for Success

### 1. Document Everything
- Take screenshots as you go
- Note all commands used
- Record all findings immediately
- Keep a lab notebook

### 2. Work Together
- Regular team meetings (at least weekly)
- Share findings in real-time
- Cross-validate each other's work
- Help each other with technical challenges

### 3. Follow the Process
- Don't skip the evidence preservation phase
- Maintain chain of custody throughout
- Use write-blockers or working copies only
- Hash everything

### 4. Stay Organized
- Use the provided folder structure
- Name files consistently
- Keep evidence separate from tools/reports
- Version control your documents

### 5. Academic Integrity
- This is your team's original work
- Cite all sources and tools
- Document your methodology
- Avoid using published solutions (they exist online!)

---

## Common Challenges

### "I can't open the E01 file in Autopsy"
- Ensure both .E01 and .E02 are in the same directory
- Check that libewf is installed
- Try using ewfverify to check file integrity

### "The timeline has millions of events"
- This is normal!
- Filter by date range
- Focus on the incident timeframe
- Use keyword searches

### "I'm not finding the spreadsheet"
- Check multiple locations: Documents, Desktop, Downloads
- Search for .xls and .xlsx files
- Look in deleted files
- Check email attachments
- Use file carving

### "Team coordination is difficult"
- Schedule regular meetings
- Use shared document repository
- Assign clear responsibilities
- Create a communication channel (Slack/Discord)

---

## Need Help?

1. **Check the documentation** - Each phase has detailed instructions
2. **Ask your team** - Someone may have solved the problem
3. **Consult tool documentation** - Most tools have good manuals
4. **Online resources** - Digital forensics communities (be careful not to use M57 solutions)
5. **Your instructor** - They're there to help!

---

## Final Deliverables Checklist

Ensure you submit:

- [ ] Final Report (PDF)
- [ ] Executive Summary
- [ ] Presentation Slides
- [ ] Evidence Package (with hashes)
- [ ] Chain of Custody Documentation
- [ ] Team Contribution Statement
- [ ] All required screenshots
- [ ] Timeline exports
- [ ] Tool outputs

---

## Good Luck!

This is a comprehensive, real-world forensic investigation. Take your time, be thorough, and most importantly - document everything!

Remember: The M57-Jean case has published solutions online (for instructor use). Avoid these - do your own investigation for the best learning experience and academic integrity.

---

**Questions?** Start with your team lead or refer to the phase-specific README files.

**Ready to begin?** Go to [00-case-initialization/README.md](./00-case-initialization/README.md)

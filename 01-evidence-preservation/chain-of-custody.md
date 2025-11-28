# Chain of Custody Form

## Case Information

**Case ID:** M57-CF-001  
**Case Name:** M57.biz Corporate Data Exfiltration  
**Investigation Type:** Digital Forensics - Data Breach  
**Agency/Organization:** Digital Forensics Training - Incident Response Team

---

## Evidence Item Information

### Item E-001: jeanm57.E01

**Evidence Tag Number:** 001  
**Description:** EnCase disk image file (Part 1 of 2) from CFO Jean Jones's laptop  
**Evidence Type:** Digital - Forensic Disk Image  
**File Format:** Expert Witness Format (E01)  
**Media Type:** Digital file  
**Make/Model:** [From ewfinfo output]  
**Serial Number:** [From ewfinfo output]  
**Size:** [File size in bytes]
**Seizure Date/Time:** 2008-07-20 04:28:00 EEST  
**Seizure Location:** Jean's Home Office  
**Seized By:** Adham Ahmed, Digital Forensic Investigator

**Acquisition Information:**
- **Original Source:** Digital Corpora (digitalcorpora.org)
- **Acquisition Date/Time:** [Date/Time]
- **Acquired By:** [Name and Signature]
- **Acquisition Method:** Downloaded from official repository
- **Acquisition Tool:** [Browser/wget/curl]

**Hash Values (Original):**
- **MD5:** ________________________________
- **SHA-1:** ________________________________
- **SHA-256:** ________________________________

---

### Item E-002: jeanm57.E02

**Evidence Tag Number:** 002  
**Description:** EnCase disk image file (Part 2 of 2) from CFO Jean Jones's laptop  
**Evidence Type:** Digital - Forensic Disk Image  
**File Format:** Expert Witness Format (E01) - Continuation  
**Media Type:** Digital file  
**Size:** [File size in bytes]
**Seizure Date/Time:** 2008-07-20 04:28:00 EEST  
**Seizure Location:** Jean's Home Office  
**Seized By:** Adham Ahmed, Digital Forensic Investigator

**Acquisition Information:**
- **Original Source:** Digital Corpora (digitalcorpora.org)
- **Acquisition Date/Time:** [Date/Time]
- **Acquired By:** [Name and Signature]
- **Acquisition Method:** Downloaded from official repository
- **Acquisition Tool:** [Browser/wget/curl]

**Hash Values (Original):**
- **MD5:** ________________________________
- **SHA-1:** ________________________________
- **SHA-256:** ________________________________

---

## Chain of Custody Record

### Transfer Log for Item E-001

| Date/Time | Released By (Name & Sign) | Received By (Name & Sign) | Purpose | Location | Notes |
|-----------|---------------------------|---------------------------|---------|----------|-------|
| | | | Download/Acquisition | [URL/Location] | |
| | | | Secure storage | | |
| | | | Analysis | | |
| | | | | | |
| | | | | | |
| | | | | | |

### Transfer Log for Item E-002

| Date/Time | Released By (Name & Sign) | Received By (Name & Sign) | Purpose | Location | Notes |
|-----------|---------------------------|---------------------------|---------|----------|-------|
| | | | Download/Acquisition | [URL/Location] | |
| | | | Secure storage | | |
| | | | Analysis | | |
| | | | | | |
| | | | | | |
| | | | | | |

---

## Access Log

### Evidence Access Record

| Date/Time | Accessed By | Purpose | Duration | Tool(s) Used | Witness | Findings Reference |
|-----------|-------------|---------|----------|--------------|---------|-------------------|
| | | Initial verification | | ewfinfo, md5sum | | |
| | | Disk structure analysis | | mmls, fsstat | | |
| | | Case creation | | Autopsy | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |

---

## Evidence Integrity Verification Log

### Verification Checkpoints

| Verification # | Date/Time | Verified By | Method | Hash Algorithm | Hash Value | Result | Notes |
|----------------|-----------|-------------|--------|----------------|------------|--------|-------|
| 1 | | | Post-download | MD5 | | ☐ Pass ☐ Fail | |
| 1 | | | Post-download | SHA-256 | | ☐ Pass ☐ Fail | |
| 2 | | | Post-copy | SHA-256 | | ☐ Pass ☐ Fail | |
| 3 | | | E01 internal | ewfverify | | ☐ Pass ☐ Fail | |
| 4 | | | Before analysis | SHA-256 | | ☐ Pass ☐ Fail | |
| 5 | | | Mid-investigation | SHA-256 | | ☐ Pass ☐ Fail | |
| 6 | | | Post-analysis | SHA-256 | | ☐ Pass ☐ Fail | |

**Verification Commands:**
```bash
# Hash verification
md5sum nps-2008-jean.E01 nps-2008-jean.E02
sha256sum nps-2008-jean.E01 nps-2008-jean.E02

# E01 integrity verification
ewfverify nps-2008-jean.E01
```

---

## Evidence Storage Information

### Current Storage Location

**Storage Type:** ☐ Physical Media ☐ Network Storage ☐ Cloud Storage ☑ Local Disk  
**Location:** [Full path]  
**Storage Medium:** [HDD/SSD/Server/etc.]  
**Access Restrictions:** [Description of access controls]  
**Environmental Controls:** [Temperature, humidity, etc. if applicable]

### Storage History

| Date Range | Location | Storage Medium | Custodian | Access Controls |
|------------|----------|----------------|-----------|-----------------|
| | | | | |
| | | | | |

---

## Copies and Derivatives

### Working Copies

| Copy # | Type | Creation Date | Created By | Location | Purpose | Hash (SHA-256) | Verified |
|--------|------|---------------|------------|----------|---------|----------------|----------|
| WC-001 | Full copy | | | | Analysis | | ☐ |
| WC-002 | Full copy | | | | Backup | | ☐ |
| | | | | | | | ☐ |

### Exported/Derived Evidence

| Item # | Description | Source | Creation Date | Created By | Tool Used | Hash | Notes |
|--------|-------------|--------|---------------|------------|-----------|------|-------|
| | Carved files | E-001/E-002 | | | PhotoRec | | |
| | Extracted registry | E-001/E-002 | | | RegRipper | | |
| | Timeline CSV | E-001/E-002 | | | log2timeline | | |
| | Email export | E-001/E-002 | | | readpst | | |
| | Browser artifacts | E-001/E-002 | | | Hindsight | | |

---

## Disposal/Return Information

**Evidence Retention Period:** [Duration or "Permanent for academic record"]  
**Disposal Method:** [If applicable]  
**Disposal Date:** [If applicable]  
**Disposed By:** [Name & Signature]  
**Witness:** [Name & Signature]

---

## Incident Reports

### Compromises or Concerns

| Date | Incident Description | Reported By | Investigation | Resolution | Impact on Evidence |
|------|---------------------|-------------|---------------|------------|-------------------|
| | | | | | None / Minimal / Significant |

---

## Certification

I certify that the information contained in this Chain of Custody document is accurate and complete to the best of my knowledge. The evidence described herein has been handled in accordance with proper forensic procedures and has been secured against tampering or contamination.

**Primary Evidence Custodian:**

Name: _______________________________  
Signature: _______________________________  
Date: _______________________________  
Badge/ID: _______________________________

**Lead Investigator:**

Name: _______________________________  
Signature: _______________________________  
Date: _______________________________  

**Supervising Instructor/Advisor:**

Name: _______________________________  
Signature: _______________________________  
Date: _______________________________  
Institution: _______________________________

---

## Attachments

- [ ] Hash verification outputs
- [ ] ewfinfo output
- [ ] Download logs/receipts
- [ ] Storage location access logs
- [ ] Evidence photographs (if physical media involved)

---

## Notes and Observations

[Use this section to document any anomalies, special handling procedures, environmental conditions, or other relevant information not captured above]




---

**Form Version:** 1.0  
**Last Updated:** [Date]  
**Page:** ___ of ___

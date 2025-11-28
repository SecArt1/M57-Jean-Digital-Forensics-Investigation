# Timeline Analysis

**Analyst:** Mohamed El-Awady (Timeline Analyst)  
**Date:** [Date]  
**Tools Used:** log2timeline/Plaso, Timeline Explorer, Autopsy

---

## Objective

Create a comprehensive timeline of all system and user activities to identify the sequence of events leading to the data exfiltration incident.

---

## Timeline Creation

### Super Timeline Generation

**Tool:** log2timeline (Plaso)

**Command:**
```bash
log2timeline.py --storage-file m57-jean-timeline.plaso jeanm57.E01
```

**Execution Details:**
- Start Time: [Time]
- End Time: [Time]
- Duration: [Duration]
- Events Processed: [Count]
- Storage File Size: [Size]

**Output:** [Path to .plaso file]

---

### Timeline Filtering and Export

**Command:**
```bash
psort.py -o l2tcsv -w m57-jean-timeline-full.csv m57-jean-timeline.plaso
```

**Timeline Scope:**
- Date Range: [Earliest] to [Latest]
- Total Events: [Count]
- Exported Format: CSV

**Full Timeline:** [Path to CSV file]

---

## Time Zone Analysis

**System Time Zone:** [From registry]  
**Timeline Tool Time Zone:** [UTC/Local]  
**Adjustment Required:** [Yes/No]

**Notes on time discrepancies:**
```
[Document any time zone or clock skew issues]
```

---

## Critical Time Periods

### Incident Timeframe

Based on scenario and initial analysis:

**Estimated Incident Window:**
- Start: [Date/Time when spreadsheet was likely accessed]
- End: [Date/Time when exfiltration likely occurred]
- Duration: [Hours/Days]

---

## Timeline Analysis by Date Range

### Pre-Incident Period

**Analysis Period:** [Start Date] to [End Date]

#### Key Events

| Date/Time | Event Type | Description | Source | Significance |
|-----------|------------|-------------|--------|--------------|
| | File Creation | Spreadsheet created | MFT | Original creation |
| | User Login | Jean logged in | Event Log | |
| | Application Execution | [App] executed | Prefetch | |
| | | | | |

#### Observations:
```
[Normal activity patterns, baseline behavior, etc.]




```

---

### Incident Period

**Analysis Period:** [Start Date] to [End Date]

#### Key Events

| Date/Time | Event Type | Description | Source | Significance | Evidence Link |
|-----------|------------|-------------|--------|--------------|---------------|
| | File Access | Spreadsheet opened | MFT/$STANDARD_INFORMATION | **CRITICAL** | |
| | File Modified | Spreadsheet modified | | | |
| | Email Activity | Email sent with attachment | PST | **CRITICAL** | |
| | Web Activity | URL accessed | Browser history | **CRITICAL** | |
| | USB Event | USB device connected | Registry | **CRITICAL** | |
| | File Copy | File copied to USB | USN Journal | **CRITICAL** | |
| | File Upload | Web upload activity | Browser history | **CRITICAL** | |
| | | | | | |

#### Event Sequence Narrative:

```
[Provide detailed narrative of the incident sequence based on timeline]

1. [Time] - [Event description and significance]
2. [Time] - [Event description and significance]
3. [Time] - [Event description and significance]
...




```

---

### Post-Incident Period

**Analysis Period:** [Start Date] to [End Date]

#### Key Events

| Date/Time | Event Type | Description | Source | Significance |
|-----------|------------|-------------|--------|--------------|
| | File Deletion | Spreadsheet deleted | MFT | Cover-up attempt? |
| | Browser History Clearing | History cleared | Browser | Cover-up attempt? |
| | Application Usage | Cleaning tool used | Prefetch | Anti-forensics? |
| | | | | |

#### Observations:
```
[Evidence of cover-up, continued activity, return to normal, etc.]




```

---

## File System Timeline

### Spreadsheet File Timeline

**Target File:** [Filename]

#### MACB Times

| Timestamp Type | Date/Time | Notes |
|----------------|-----------|-------|
| Created (Born) | | File system creation |
| Modified (Written) | | Last content modification |
| MFT Modified | | Metadata change |
| Accessed (Read) | | Last access time (may be unreliable) |

#### File Activity Timeline

| Date/Time | Activity | Tool/Source | Details |
|-----------|----------|-------------|---------|
| | Created | MFT | Original file creation |
| | Modified | MFT | Content changed |
| | Accessed | MFT | Opened by user/application |
| | Copied | USN Journal | Copied to [location] |
| | Renamed | USN Journal | Name changed |
| | Deleted | MFT | Moved to recycle bin / permanently deleted |
| | Recovered | File carving | Found in unallocated space |

---

## User Activity Timeline

### Login/Logout Events

| Date/Time | Event | User | Source | Session Duration |
|-----------|-------|------|--------|------------------|
| | Login | Jean | Security.evtx (Event ID 4624) | |
| | Logout | Jean | Security.evtx (Event ID 4634) | |
| | | | | |

### Application Usage Timeline

| Date/Time | Application | Action | Source | Relevance |
|-----------|-------------|--------|--------|-----------|
| | Excel/LibreOffice | Executed | Prefetch | Spreadsheet access |
| | Web Browser | Executed | Prefetch | Potential upload |
| | Email Client | Executed | Prefetch | Potential email send |
| | FTP Client | Executed | Prefetch | File transfer? |
| | [Other apps] | | | |

---

## Communication Timeline

### Email Activity

| Date/Time | Action | Subject | From | To | Attachment | Significance |
|-----------|--------|---------|------|-----|------------|--------------|
| | Sent | | Jean | | salary.xlsx? | **CRITICAL** |
| | Received | | | Jean | | |
| | | | | | | |

### Web Activity

| Date/Time | URL | Activity Type | Significance |
|-----------|-----|---------------|--------------|
| | [competitor website] | Visit | **CRITICAL** - incident location |
| | [file upload site] | Upload | **CRITICAL** - potential exfiltration |
| | [webmail] | Access | Potential communication |
| | | | |

---

## External Device Timeline

### USB Device Events

| Date/Time | Event | Device | Serial # | Action | Files Transferred |
|-----------|-------|--------|----------|--------|-------------------|
| | Connected | USB Drive | | First connection | N/A |
| | File Copy | USB Drive | | Files copied to device | [List files] |
| | Disconnected | USB Drive | | Removed | |
| | | | | | |

---

## Network Activity Timeline

### Network Connections

| Date/Time | Protocol | Destination | Port | Application | Purpose |
|-----------|----------|-------------|------|-------------|---------|
| | HTTP/HTTPS | [competitor domain] | 80/443 | Browser | Incident site |
| | FTP | [IP/domain] | 21 | FTP client | File transfer? |
| | SMTP | [mail server] | 25/587 | Email client | Email send |
| | | | | | |

---

## Registry Activity Timeline

### Key Registry Changes

| Date/Time | Registry Key | Value | Change Type | Significance |
|-----------|--------------|-------|-------------|--------------|
| | USBSTOR | Device entry | Created | USB connected |
| | RecentDocs | Spreadsheet | Accessed | File opened |
| | TypedPaths | URL | Created | Manual URL entry |
| | | | | |

---

## Deleted File Timeline

### File Deletion Events

| Date/Time | File | Original Path | Deletion Method | Recovered | Significance |
|-----------|------|---------------|-----------------|-----------|--------------|
| | Spreadsheet copy | Desktop | Recycle Bin | ☐ Yes | Cover-up? |
| | Email draft | AppData | Permanent | ☐ Yes | Communication evidence |
| | | | | | |

---

## Anti-Forensic Activity Timeline

### Evidence Destruction Attempts

| Date/Time | Activity | Tool/Method | Target | Success | Notes |
|-----------|----------|-------------|--------|---------|-------|
| | Browser history cleared | Browser/Tool | History database | Partial | Some artifacts remain |
| | File wiping attempted | [Tool] | Spreadsheet | No | Recovered from unallocated |
| | Temp files deleted | Manual/Tool | Temp directory | Partial | |

---

## Timeline Correlation

### Correlated Event Sequences

**Sequence 1: Spreadsheet Access and Exfiltration**

```
[Time 1] - Spreadsheet opened (MFT access time)
    ↓
[Time 2] - Email client opened (Prefetch)
    ↓
[Time 3] - Email sent with attachment (PST analysis)
    ↓
[Time 4] - Browser opened (Prefetch)
    ↓
[Time 5] - Competitor website accessed (Browser history)
```

**Sequence 2: [Other correlated sequence]**

```
[Describe another important sequence]
```

---

## Gap Analysis

### Timeline Gaps

| Time Period | Gap Duration | Possible Reasons | Impact on Investigation |
|-------------|--------------|------------------|-------------------------|
| | | System off, no activity, clock issues | |
| | | | |

---

## Timeline Anomalies

### Unusual Events

| Date/Time | Event | Why Unusual | Requires Investigation |
|-----------|-------|-------------|------------------------|
| | | | ☐ |
| | | | ☐ |

---

## Timeline Visualizations

### Timeline Charts

**Location:** [Path to charts/graphs]

**Charts Created:**
- [ ] Full system activity timeline
- [ ] Incident period zoom-in
- [ ] File system activity by type
- [ ] User login patterns
- [ ] Application usage timeline
- [ ] Network activity timeline

**Tool Used:** [Excel, Timeline Explorer, Python, etc.]

---

## Key Timeline Findings

### Critical Events Summary

1. **[Date/Time]:** [Most significant event]
   - **Evidence:** [Source]
   - **Significance:** [Why this matters]

2. **[Date/Time]:** [Second most significant event]
   - **Evidence:** [Source]
   - **Significance:** [Why this matters]

3. **[Date/Time]:** [Third most significant event]
   - **Evidence:** [Source]
   - **Significance:** [Why this matters]

---

## Timeline-Based Conclusions

### Sequence of Events Leading to Exfiltration

**Summary:**
```
[Provide clear, concise narrative based on timeline analysis]





```

### User Intent Indicators

Based on timeline:
- [ ] Deliberate action (evidence: [list])
- [ ] Accidental (evidence: [list])
- [ ] Compromised system (evidence: [list])
- [ ] Unclear/mixed evidence

---

## Supporting Evidence

### Timeline Exports

| Export | Format | Location | Purpose |
|--------|--------|----------|---------|
| Full timeline | CSV | [Path] | Complete record |
| Filtered timeline (incident period) | CSV | [Path] | Focus on key events |
| MACB timeline (spreadsheet) | CSV | [Path] | File-specific |
| User activity timeline | CSV | [Path] | User behavior |

---

## Validation and Verification

**Peer Reviewed By:** [Team Member Name]  
**Review Date:** [Date]  
**Issues Found:** [None / List issues]  
**Resolution:** [How issues were addressed]

---

## Notes

[Add any additional observations, uncertainties, or questions arising from timeline analysis]

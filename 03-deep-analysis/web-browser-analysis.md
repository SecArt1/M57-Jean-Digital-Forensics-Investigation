# Web Browser Forensics Analysis

**Analyst:** [Team Member Name]  
**Date:** [Date]  
**Tools Used:** Hindsight, BrowsingHistoryView, DB Browser for SQLite, Autopsy

---

## Objective

Analyze web browser artifacts to identify evidence of the spreadsheet being uploaded to a competitor's website, communication with external parties, or other internet-based exfiltration methods.

---

## Browser Identification

### Installed Browsers

| Browser | Version | Profile Location | Last Used | Status |
|---------|---------|------------------|-----------|--------|
| Internet Explorer | | | | ☐ Analyzed |
| Mozilla Firefox | | | | ☐ Analyzed |
| Google Chrome | | | | ☐ Analyzed |
| Safari | | | | ☐ Analyzed |
| [Other] | | | | ☐ Analyzed |

**Primary Browser:** [Browser name based on usage]

---

## Browser Profile Extraction

### Profile Data Files

| Browser | Profile Path | Files Extracted | Status |
|---------|--------------|-----------------|--------|
| | | History, Cookies, Cache, Downloads | ☐ |
| | | | ☐ |

### Extraction Commands

**Chrome/Chromium:**
```bash
# Extract from disk image
icat -o [offset] nps-2008-jean.E01 [inode_History] > Chrome_History
icat -o [offset] nps-2008-jean.E01 [inode_Cookies] > Chrome_Cookies
```

**Firefox:**
```bash
# Extract places.sqlite
icat -o [offset] nps-2008-jean.E01 [inode_places.sqlite] > Firefox_places.sqlite
```

**Extracted Files Location:** [Path]

---

## Browser History Analysis

### Chrome History

**Database:** Chrome History (SQLite)  
**Tool:** DB Browser for SQLite / Hindsight

**Command:**
```bash
# Using Hindsight
hindsight.py -i [Chrome profile path] -o [output directory]
```

#### URLs Visited - Incident Period

| Date/Time | URL | Title | Visit Count | Source | Significance |
|-----------|-----|-------|-------------|--------|--------------|
| | http://competitor.com/comments | | | History | **CRITICAL - Incident site** |
| | https://fileupload.com | | | History | File upload service? |
| | https://webmail.provider.com | | | History | Web email access |
| | | | | | |

### Firefox History

**Database:** places.sqlite  
**Query:**
```sql
SELECT datetime(visit_date/1000000,'unixepoch') as visit_time,
       url,
       title,
       visit_count
FROM moz_places
INNER JOIN moz_historyvisits ON moz_places.id = moz_historyvisits.place_id
ORDER BY visit_date DESC;
```

#### URLs Visited

| Date/Time | URL | Title | Visit Count | Significance |
|-----------|-----|-------|-------------|--------------|
| | | | | |
| | | | | |

---

## Download History

### Files Downloaded

| Date/Time | Filename | URL | Path | Size | Hash | Status |
|-----------|----------|-----|------|------|------|--------|
| | | | | | | ☐ Found on disk |
| | | | | | | ☐ Deleted |
| | | | | | | ☐ Not found |

**Chrome Downloads Query:**
```sql
SELECT datetime(start_time/1000000-11644473600,'unixepoch') as download_time,
       target_path,
       tab_url,
       site_url
FROM downloads;
```

**Firefox Downloads Location:** downloads.sqlite / places.sqlite

---

## File Upload Detection

### Upload Evidence

**Methods to detect uploads:**
1. POST requests in browser history
2. Upload service URLs in history
3. Cached upload form data
4. Browser autofill/form history

#### Detected File Uploads

| Date/Time | Upload URL | Filename | Browser | Method Detected | Significance |
|-----------|------------|----------|---------|-----------------|--------------|
| | | | | POST request | **Possible exfiltration** |
| | | | | Form cache | |

**Upload Services Accessed:**

| Service | URL | Date/Time | Purpose | Evidence |
|---------|-----|-----------|---------|----------|
| Dropbox | | | Cloud storage | |
| Google Drive | | | Cloud storage | |
| File.io | | | Anonymous upload | |
| WeTransfer | | | File transfer | |
| [Competitor site upload] | | | **CRITICAL** | |

---

## Cookies Analysis

### Cookies from Relevant Sites

| Domain | Name | Value | Created | Last Accessed | Significance |
|--------|------|-------|---------|---------------|--------------|
| competitor.com | session_id | | | | Login session |
| fileupload.com | upload_token | | | | Upload session |
| | | | | | |

**Extraction Command:**
```bash
# Chrome cookies
sqlite3 Cookies "SELECT host_key, name, value, datetime(creation_utc/1000000-11644473600,'unixepoch'), datetime(last_access_utc/1000000-11644473600,'unixepoch') FROM cookies WHERE host_key LIKE '%competitor%';"
```

---

## Cache Analysis

### Cached Files of Interest

| URL | Filename | Cached Date | File Type | Size | Extracted | Notes |
|-----|----------|-------------|-----------|------|-----------|-------|
| | | | HTML/Image/Script | | ☐ | Upload confirmation page? |
| | | | | | ☐ | |

**Cache Location:** 
- Chrome: %LocalAppData%\Google\Chrome\User Data\Default\Cache
- Firefox: %AppData%\Mozilla\Firefox\Profiles\[profile]\cache2

**Extraction Tool:** [ChromeCacheView / MozillaCacheView]

---

## Browser Search History

### Search Queries

| Date/Time | Search Engine | Query | Context | Significance |
|-----------|---------------|-------|---------|--------------|
| | Google | "how to upload file anonymously" | | Intent? |
| | | "delete browser history" | | Anti-forensics? |
| | | [competitor name] | | Researching? |
| | | "send large file" | | Planning transfer? |

**Source:** Search engine URLs in history or search.sqlite (Firefox)

---

## Bookmarks Analysis

### Saved Bookmarks

| Folder | Title | URL | Date Added | Significance |
|--------|-------|-----|------------|--------------|
| | | | | |

**Suspicious bookmarks:**
- [ ] File upload services
- [ ] Anonymous communication tools
- [ ] Competitor websites
- [ ] Job search sites

---

## Autofill and Form Data

### Form History

**Firefox:** formhistory.sqlite  
**Chrome:** Web Data SQLite database

| Field Name | Value | Times Used | Last Used | Source Page |
|------------|-------|------------|-----------|-------------|
| email | | | | Upload form? |
| username | | | | Login form |
| | | | | |

---

## Session Restore Data

### Open Tabs at Last Session

| Tab # | URL | Title | Last Accessed | Significance |
|-------|-----|-------|---------------|--------------|
| | | | | Site user was on before shutdown |

**Source:** sessionstore.js (Firefox) / Session Storage (Chrome)

---

## Browser Extensions/Add-ons

### Installed Extensions

| Browser | Extension Name | Version | Purpose | Suspicious |
|---------|----------------|---------|---------|------------|
| | | | | ☐ |
| | File upload manager | | Bulk uploads | ☐ Yes |
| | Privacy tool | | Clear traces | ☐ Yes |

**Extensions of Interest:**
- File transfer extensions
- Privacy/anti-forensics extensions
- VPN/proxy extensions
- Screenshot/capture tools

---

## Typed URLs

### Manually Typed URLs

**Chrome:** Typed URLs in History database (typed_count > 0)  
**Firefox:** moz_places where typed = 1

| Date/Time | URL | Typed Count | Significance |
|-----------|-----|-------------|--------------|
| | competitor.com | | Direct navigation |
| | | | |

**Analysis:** Manually typed URLs indicate deliberate navigation vs. clicked links.

---

## Browser Timeline

### Chronological Browser Activity

| Date/Time | Activity | URL/Description | Significance |
|-----------|----------|-----------------|--------------|
| | Search | "competitor company" | Research |
| | Visit | competitor.com | Site access |
| | Login | competitor.com/login | Account creation? |
| | Navigate | competitor.com/upload | Upload page |
| | POST | competitor.com/submit | **File upload?** |
| | Visit | competitor.com/comments | **Incident location** |
| | Clear | History cleared | Cover-up attempt |

---

## Web-Based Email Activity

### Webmail Access

| Service | URL | Date/Time | Actions | Significance |
|---------|-----|-----------|---------|--------------|
| Gmail | mail.google.com | | Compose, Send | Alternative email route |
| Yahoo | mail.yahoo.com | | | |
| [Other] | | | | |

**Evidence of Webmail Use:**
- Login sessions
- "Compose" URLs
- "Sent" confirmation pages
- Cached email content

---

## Cloud Storage Activity

### Cloud Services Accessed

| Service | URL | Date/Time | Actions | Files | Significance |
|---------|-----|-----------|---------|-------|--------------|
| Dropbox | dropbox.com | | Upload, Share | | Cloud exfiltration? |
| Google Drive | drive.google.com | | | | |
| OneDrive | onedrive.live.com | | | | |
| [Other] | | | | | |

---

## Social Media Activity

### Social Media Access

| Platform | Date/Time | Activity | Relevance |
|----------|-----------|----------|-----------|
| LinkedIn | | Profile updates, Messaging | Job hunting? |
| Facebook | | | |
| Twitter | | | |

---

## Competitor Website Analysis

### Competitor Site Visits

**Competitor Domain:** [Domain name]

| Date/Time | URL | Activity | Significance |
|-----------|-----|----------|--------------|
| | /home | Landing page visit | Initial reconnaissance |
| | /about | Information gathering | |
| | /comments | **Comments section** | **Incident location** |
| | /upload or /submit | Upload interface | **CRITICAL** |

### POST Requests to Competitor

**Detection:** Browser history, cache, form data

| Date/Time | URL | Method | Data Sent | Significance |
|-----------|-----|--------|-----------|--------------|
| | competitor.com/post-comment | POST | [Form data] | **Spreadsheet upload?** |

---

## Anti-Forensic Activity

### Browser History Clearing

**Evidence of clearing:**
- [ ] Sudden gap in browser history
- [ ] Prefetch evidence of CCleaner or similar
- [ ] Registry evidence of clear commands
- [ ] Partial history recovery from cache/other sources

| Date/Time | Method | Extent | Recovery Possible |
|-----------|--------|--------|-------------------|
| | Built-in clear | Full/Partial | ☐ Partial recovery from cache |
| | CCleaner | | | |

### Private Browsing Detection

**Indicators:**
- [ ] Private browsing windows opened (Prefetch)
- [ ] Absence of expected history for known timeframe
- [ ] Cache files but no corresponding history

---

## Browser Artifact Correlation

### Cross-Artifact Validation

| Event | History | Cache | Cookies | Downloads | Validated |
|-------|---------|-------|---------|-----------|-----------|
| Competitor site visit | ☐ | ☐ | ☐ | ☐ | ☐ |
| File upload | ☐ | ☐ | ☐ | ☐ | ☐ |
| Email access | ☐ | ☐ | ☐ | ☐ | ☐ |

---

## Key Browser Findings

### Critical Discoveries

1. **Finding:**
   - **Date/Time:** [Date/Time]
   - **Evidence:** [Specific URL, cached file, etc.]
   - **Significance:** [How this relates to incident]

2. **Finding:**
   - **Date/Time:** [Date/Time]
   - **Evidence:** [Specific URL, cached file, etc.]
   - **Significance:** [How this relates to incident]

---

## Browser Evidence Summary

### Exfiltration Method

**Method:** ☐ Web upload ☐ Webmail ☐ Cloud storage ☐ Social media ☐ None found

**Details:**
```
[Describe how browser was used in exfiltration, if applicable]




```

---

## Supporting Documentation

### Exports

| Export | Format | Location | Purpose |
|--------|--------|----------|---------|
| Browser history | CSV | [Path] | Timeline integration |
| Download history | CSV | [Path] | File tracking |
| Cookies | CSV | [Path] | Session analysis |
| Cached files | Native | [Path] | Content recovery |
| Hindsight report | HTML | [Path] | Comprehensive view |

### Screenshots

Location: [Path]

- [ ] Browser history showing competitor site
- [ ] Cached upload page
- [ ] Download history
- [ ] Cookie list from competitor domain
- [ ] Timeline visualization

---

## Peer Review

**Reviewed By:** [Team Member Name]  
**Review Date:** [Date]  
**Comments:** [Any issues or confirmations]

---

## Notes

[Additional observations and areas for further investigation]

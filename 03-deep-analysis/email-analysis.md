# Email Analysis

**Analyst:** [Team Member Name]  
**Date:** [Date]  
**Tools Used:** readpst, Outlook PST Viewer, MailXaminer, Autopsy

---

## Objective

Analyze all email communications to identify evidence of the confidential spreadsheet being sent, received, or discussed, and to determine Jean's involvement or victimization.

---

## Email Client Identification

### Installed Email Clients

| Client | Version | Status | Data Location |
|--------|---------|--------|---------------|
| Microsoft Outlook | | ☐ Found | |
| Thunderbird | | ☐ Found | |
| Windows Mail | | ☐ Found | |
| [Other] | | ☐ Found | |

**Primary Email Client:** [Client name]

---

## Email Data File Location

### PST/OST Files

| File | Path | Size | Type | Created | Modified | Status |
|------|------|------|------|---------|----------|--------|
| | | | PST/OST | | | ☐ Extracted |
| | | | PST/OST | | | ☐ Extracted |

### Extraction Process

**Method:** TSK icat command / FTK Imager / Autopsy export

**Command:**
```bash
# Example using icat
icat -o [offset] nps-2008-jean.E01 [inode] > extracted-emails.pst
```

**Extracted File Location:** [Path]  
**Hash of Extracted File:** [SHA-256]

---

## PST File Analysis

### PST File Information

**Tool:** readpst / PST Walker / Outlook PST Viewer

**Command:**
```bash
readpst -D -M -e -o output_directory extracted-emails.pst
```

**Metadata:**
- PST Format: [ANSI/Unicode]
- Email Count: [Number]
- Folder Count: [Number]
- Date Range: [Earliest] to [Latest]
- Total Size: [MB/GB]

**Export Location:** [Path to exported emails]

---

## Email Folder Structure

### Folder Inventory

| Folder Name | Email Count | Size | Date Range | Notes |
|-------------|-------------|------|------------|-------|
| Inbox | | | | |
| Sent Items | | | | **Priority - exfiltration evidence** |
| Drafts | | | | Check for unsent messages |
| Deleted Items | | | | Recover deleted emails |
| Outbox | | | | Pending sends |
| [Custom folders] | | | | |

---

## Keyword Search in Emails

### Search Terms

| Keyword | Hits | Relevant Emails | Notes |
|---------|------|-----------------|-------|
| salary | | | |
| employee | | | |
| confidential | | | |
| spreadsheet | | | |
| [Competitor name] | | | **Critical** |
| attachment | | | |
| send | | | |
| forward | | | |
| urgent | | | |
| secret | | | |
| leak | | | |
| money | | | |
| pay | | | |

**Search Tool:** [PST search utility / grep on exported mbox]

---

## Sent Email Analysis

### Emails Sent During Incident Period

**Analysis Period:** [Date range]

| Date/Time | To | Subject | Attachments | Size | Significance |
|-----------|-----|---------|-------------|------|--------------|
| | | | ☐ Yes | | |
| | | | ☐ Yes | | |
| | | | ☐ Yes | | |

### Emails with Attachments

| Date/Time | To | Subject | Attachment Name | File Type | Size | Hash | Match? |
|-----------|-----|---------|-----------------|-----------|------|------|--------|
| | | | | .xlsx | | | ☐ Spreadsheet |
| | | | | | | | ☐ |
| | | | | | | | ☐ |

**Attachment Extraction:**
```bash
# Extract attachments
readpst -e -o attachments_output extracted-emails.pst
```

**Extracted Attachments Location:** [Path]

---

## Received Email Analysis

### Emails Received During Investigation Period

| Date/Time | From | Subject | Significance |
|-----------|------|---------|--------------|
| | | | Phishing attempt? |
| | | | Request for data? |
| | | | | |

### Suspicious/Phishing Emails

| Date/Time | From | Subject | Indicators | Analysis |
|-----------|------|---------|------------|----------|
| | | | Spoofed sender / Urgency / Links | |
| | | | | |

**Phishing Indicators:**
- [ ] Urgent language
- [ ] Spoofed sender domain
- [ ] Malicious links
- [ ] Unexpected attachments
- [ ] Requests for credentials
- [ ] Grammar/spelling errors

---

## Draft Email Analysis

### Draft Messages

| Date Created | To | Subject | Content Summary | Attachments | Significance |
|--------------|-----|---------|-----------------|-------------|--------------|
| | | | | ☐ | Unsent exfiltration? |
| | | | | ☐ | |

---

## Deleted Email Recovery

### Emails in Deleted Items Folder

| Original Date | From/To | Subject | Deleted Date | Recovered | Significance |
|---------------|---------|---------|--------------|-----------|--------------|
| | | | | ☐ | Cover-up attempt? |
| | | | | ☐ | |

### Permanently Deleted Emails

**Recovery Method:** PST recovery tools / File carving

| Date | From/To | Subject | Recovery Method | Status | Significance |
|------|---------|---------|-----------------|--------|--------------|
| | | | Carving/PST repair | ☐ Recovered | |

---

## Email Header Analysis

### Critical Email Headers

**Email ID:** [Identifier for critical email]

```
From: [Full header value]
To: [Full header value]
Subject: [Subject line]
Date: [Date with timezone]
Message-ID: [Message ID]
Received: [Routing information]
X-Originating-IP: [IP if available]
MIME-Version: [Version]
Content-Type: [Type]

[Add full headers of important emails]
```

**Analysis:**
- **Routing:** [Trace email path]
- **Originating IP:** [Identify if suspicious]
- **Authentication:** [SPF/DKIM/DMARC results]
- **Tampering:** [Signs of manipulation]

---

## Email Correspondence Analysis

### Communication with External Parties

| Date Range | Correspondent | Email Domain | Email Count | Nature | Suspicious |
|------------|---------------|--------------|-------------|--------|------------|
| | [Name] | @competitor.com | | | ☐ Yes |
| | [Name] | @personal.com | | | ☐ Yes |
| | | | | | |

### Email Thread Analysis

**Thread 1: [Subject/Topic]**

| Date | From | To | Summary | Significance |
|------|------|-----|---------|--------------|
| | | | | |
| | | | | |

**Thread Analysis:**
```
[Narrative analysis of the email conversation, context, and implications]



```

---

## Attachment Analysis

### All Email Attachments

| Filename | Email Date | File Type | Size | Hash (SHA-256) | Analyzed | Match to Incident |
|----------|------------|-----------|------|----------------|----------|-------------------|
| | | | | | ☐ | ☐ **MATCH** |
| | | | | | ☐ | ☐ |
| | | | | | ☐ | ☐ |

### Spreadsheet Attachments

| Filename | Sent To | Date | Size | Hash | Content Summary | Match to Incident File |
|----------|---------|------|------|------|-----------------|------------------------|
| | | | | | Employee names & salaries | ☐ **EXACT MATCH** |
| | | | | | | ☐ |

**Hash Comparison:**
- Incident File Hash: [Hash]
- Attachment Hash: [Hash]
- Match: ☐ Yes ☐ No ☐ Variant

---

## Email Timeline Integration

### Email Events for Master Timeline

| Date/Time | Event Type | Description | Significance |
|-----------|------------|-------------|--------------|
| | Email sent | Spreadsheet sent to [recipient] | **CRITICAL** |
| | Email received | Message from competitor | Context |
| | Email deleted | Incriminating email deleted | Cover-up |
| | Draft saved | Draft to competitor | Intent |

---

## Webmail Analysis

### Web-Based Email Access

**Source:** Browser history, cookies, cache

| Service | Emails Accessed Via Web | Date/Time | IP/Location |
|---------|-------------------------|-----------|-------------|
| Gmail | ☐ Yes | | |
| Yahoo Mail | ☐ Yes | | |
| Outlook.com | ☐ Yes | | |
| [Other] | ☐ Yes | | |

**Evidence of Webmail Use:**
- [ ] Login sessions in browser history
- [ ] Cached email content
- [ ] Cookies from email providers
- [ ] File downloads from email attachments

---

## Email Account Configuration

### Account Settings

**Source:** Registry, email client configuration files

| Account | Email Address | Server Type | Server | Username | Last Used |
|---------|---------------|-------------|--------|----------|-----------|
| Account 1 | | POP3/IMAP/Exchange | | | |
| Account 2 | | | | | |

### External Email Accounts

**Evidence of personal email accounts:**

| Email Address | Provider | Purpose | Usage Frequency | Significance |
|---------------|----------|---------|-----------------|--------------|
| jean@personal.com | Gmail | Personal | | Potential exfiltration route |
| | | | | |

---

## Communication Pattern Analysis

### Email Volume Over Time

| Time Period | Emails Sent | Emails Received | Notes |
|-------------|-------------|-----------------|-------|
| Week before incident | | | Baseline |
| Incident week | | | Spike in activity? |
| Week after incident | | | Reduction? |

### Email Behavior Anomalies

| Anomaly | Date/Time | Description | Significance |
|---------|-----------|-------------|--------------|
| Unusual recipient | | Email to competitor | **CRITICAL** |
| After-hours email | | Email sent at [unusual time] | Deliberate timing |
| Encrypted email | | PGP/encrypted attachment | Hiding content |
| Large attachment | | Unusually large file | Data exfiltration |

---

## Correlation with Other Evidence

### Email-to-File System Correlation

| Email Event | File System Event | Correlation |
|-------------|-------------------|-------------|
| Attachment sent | File modified/accessed | Attachment is spreadsheet |
| Email draft created | File copied | Preparing to send |
| Email deleted | File deleted | Cover-up |

### Email-to-Web Activity Correlation

| Email Event | Web Activity | Correlation |
|-------------|--------------|-------------|
| Email with link | Link clicked in browser | Follow-up action |
| Email about upload | File uploaded via web | Coordinated exfiltration |

---

## Malicious Email Detection

### Malware Indicators

| Email Date | From | Subject | Attachment | Malware | Analysis |
|------------|------|---------|------------|---------|----------|
| | | | | ☐ Detected | |
| | | | | ☐ Detected | |

**Malware Scan Results:**
- Tool Used: [ClamAV/VirusTotal/YARA]
- Detections: [Count]
- Malicious Emails: [Count]

---

## Key Email Findings

### Critical Discoveries

1. **Finding:**
   - **Date:** [Date/Time]
   - **Email:** [Description]
   - **Evidence:** [Specific email, attachment, header]
   - **Significance:** [How this relates to incident]

2. **Finding:**
   - **Date:** [Date/Time]
   - **Email:** [Description]
   - **Evidence:** [Specific email, attachment, header]
   - **Significance:** [How this relates to incident]

---

## Email Evidence Summary

### Exfiltration Evidence

**Method:** ☐ Email attachment ☐ Email link ☐ Email instructions ☐ None found

**Details:**
```
[Provide detailed description of how email was used in the exfiltration, if applicable]




```

### Intent Evidence

**Indicators of deliberate action:**
- [ ] Email to known competitor
- [ ] Incriminating email content
- [ ] Evidence of planning in email threads
- [ ] Financial motivation in emails
- [ ] Attempts to delete evidence

**Indicators of compromise/innocence:**
- [ ] Phishing emails received
- [ ] Malware delivered via email
- [ ] No suspicious email activity
- [ ] Consistent with normal patterns

---

## Supporting Documentation

### Email Exports

| Export | Format | Location | Purpose |
|--------|--------|----------|---------|
| Full PST export | MBOX/EML | [Path] | Complete record |
| Incident-related emails | EML | [Path] | Key evidence |
| All attachments | Native format | [Path] | Attachment analysis |
| Email metadata | CSV | [Path] | Timeline integration |

### Screenshots

Location: [Path to screenshots]

- [ ] Email client folder structure
- [ ] Critical sent email
- [ ] Email with spreadsheet attachment
- [ ] Deleted email recovery
- [ ] Phishing email (if found)
- [ ] Email headers

---

## Peer Review

**Reviewed By:** [Team Member Name]  
**Review Date:** [Date]  
**Comments:** [Any issues or confirmations]

---

## Notes

[Add any additional observations, questions, or areas requiring further investigation]

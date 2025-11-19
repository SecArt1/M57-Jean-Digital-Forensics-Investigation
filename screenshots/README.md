# Screenshots Directory

This directory contains all screenshots captured during the M57-Jean investigation.

## Organization by Phase

```
screenshots/
├── phase0-initialization/
│   ├── lab-setup/
│   └── tool-installation/
├── phase1-preservation/
│   ├── hash-verification/
│   ├── disk-structure/
│   └── autopsy-case-creation/
├── phase2-assessment/
│   ├── system-info/
│   ├── file-system/
│   ├── installed-software/
│   └── user-accounts/
├── phase3-analysis/
│   ├── timeline/
│   ├── email/
│   ├── browser/
│   ├── registry/
│   ├── deleted-files/
│   └── network/
├── phase4-correlation/
│   └── evidence-correlation/
└── phase5-reporting/
    └── final-evidence/
```

## Screenshot Naming Convention

```
[YYYYMMDD]-[PHASE]-[CATEGORY]-[DESCRIPTION]-[NUMBER].[ext]

Examples:
20241119-P1-Hash-MD5-Verification-01.png
20241119-P2-FileSystem-Directory-Structure-01.png
20241119-P3-Email-Spreadsheet-Attachment-01.png
20241119-P3-Browser-Competitor-Website-01.png
```

## Screenshot Guidelines

### Required Screenshots

**Phase 1: Evidence Preservation**
- [ ] Hash verification output
- [ ] ewfinfo output
- [ ] mmls partition table
- [ ] fsstat file system info
- [ ] Autopsy case creation

**Phase 2: Initial Assessment**
- [ ] Autopsy interface overview
- [ ] System information
- [ ] User account list
- [ ] Installed programs
- [ ] File type distribution
- [ ] Spreadsheet files found

**Phase 3: Deep Analysis**
- [ ] Timeline visualization
- [ ] Email with attachment
- [ ] PST file structure
- [ ] Browser history (competitor site)
- [ ] Download history
- [ ] Registry USB entries
- [ ] Deleted file recovery
- [ ] Prefetch evidence
- [ ] Key events in timeline

**Phase 4: Correlation**
- [ ] Master timeline
- [ ] Evidence correlation matrix
- [ ] Hash comparison results

**Phase 5: Reporting**
- [ ] Final key evidence screenshots

### Best Practices

1. **Quality:**
   - High resolution (1080p minimum)
   - Clear, readable text
   - Proper window sizing
   - No personal desktop clutter

2. **Content:**
   - Highlight relevant portions
   - Include timestamps when visible
   - Show complete context
   - Capture error messages completely

3. **Labeling:**
   - Add annotations if helpful
   - Include date/time in filename
   - Reference in documentation
   - Maintain chronological order

4. **Tools:**
   - Windows: Snipping Tool, Greenshot
   - Linux: Flameshot, Shutter
   - Mac: CMD+Shift+4

## Screenshot Log

Maintain a log of all screenshots:

| Filename | Date | Phase | Description | Referenced In |
|----------|------|-------|-------------|---------------|
| | | | | |
| | | | | |

## File Formats

**Preferred:** PNG (lossless)  
**Acceptable:** JPG (for large screenshots)  
**Avoid:** BMP (too large)

## Privacy Considerations

- Remove or redact personal information if needed
- No team member personal data in screenshots
- Focus on evidence, not team workspace

## Integration with Reports

Screenshots should be:
- Referenced in markdown documents
- Included in final report appendix
- Clearly captioned
- Sequentially numbered in reports

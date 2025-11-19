# Tools Output Directory

This directory stores raw output from forensic tools used in the M57-Jean investigation.

## Structure

```
tools-output/
├── autopsy/              (Autopsy reports and exports)
├── plaso/               (Timeline files: .plaso, .csv)
├── regripper/           (Registry analysis outputs)
├── bulk-extractor/      (Feature extraction results)
├── email-tools/         (readpst, email parser outputs)
├── browser-tools/       (Hindsight, history exports)
├── file-carving/        (PhotoRec, Scalpel results)
├── hash-verification/   (Hash lists, verification logs)
└── misc/                (Other tool outputs)
```

## File Organization

### Autopsy Reports
```
autopsy/
├── case-summary.html
├── tagged-results.csv
├── keyword-hits.txt
└── ingest-messages.log
```

### Timeline Files
```
plaso/
├── m57-jean-timeline.plaso         (Raw Plaso file)
├── m57-jean-timeline-full.csv      (Complete CSV export)
├── m57-jean-timeline-filtered.csv  (Incident period only)
└── timeline-creation.log           (Processing log)
```

### Registry Analysis
```
regripper/
├── SOFTWARE-analysis.txt
├── SYSTEM-analysis.txt
├── NTUSER-analysis.txt
├── SAM-analysis.txt
└── registry-extraction.log
```

### Email Exports
```
email-tools/
├── readpst-output/
│   ├── Inbox/
│   ├── Sent Items/
│   └── Deleted Items/
├── email-metadata.csv
└── attachment-list.txt
```

## File Naming

```
[YYYYMMDD]-[TOOL]-[TARGET]-[TYPE].[ext]

Examples:
20241119-regripper-SOFTWARE-report.txt
20241119-plaso-timeline-full.csv
20241119-photorec-carved-files.zip
20241119-autopsy-keyword-search.csv
```

## Command Log

Document all commands used:

| Date | Tool | Command | Input | Output | Notes |
|------|------|---------|-------|--------|-------|
| | log2timeline | `log2timeline.py --storage m57.plaso image.E01` | nps-2008-jean.E01 | m57.plaso | Full timeline |
| | psort | `psort.py -o l2tcsv -w output.csv m57.plaso` | m57.plaso | timeline.csv | CSV export |
| | | | | | |

## Tool Version Documentation

| Tool | Version | Purpose | License |
|------|---------|---------|---------|
| Autopsy | | Disk analysis | Open Source |
| Plaso | | Timeline | Open Source |
| RegRipper | | Registry | Open Source |
| readpst | | Email extraction | Open Source |
| PhotoRec | | File carving | Open Source |
| | | | |

## Important Notes

- **Keep original tool outputs unmodified**
- **Create copies for analysis/filtering**
- **Log all tool executions**
- **Note any errors or warnings**
- **Document tool versions**
- **Preserve command-line syntax**

## Large Files

Some tool outputs may be very large:

- Timeline files: Can be several GB
- Carved files: May be extensive
- Browser cache: Can be large

**Storage management:**
- Compress large outputs after analysis
- Keep only relevant extracts in reports
- Document full file locations
- Maintain backups

## Verification

Tool outputs should be:
- Time-stamped
- Associated with specific evidence items
- Reproducible (commands documented)
- Validated against source evidence

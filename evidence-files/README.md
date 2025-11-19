# Evidence Files Directory

This directory stores extracted evidence and exported data from the M57-Jean investigation.

## Structure

Organize evidence files by type:

```
evidence-files/
├── disk-images/          (Original E01/E02 files)
├── registry-hives/       (Extracted registry files)
├── email-data/           (PST/OST exports and parsed emails)
├── browser-artifacts/    (History, cookies, cache databases)
├── carved-files/         (Recovered deleted files)
├── timeline-exports/     (CSV timelines and reports)
├── network-artifacts/    (PCAP, logs, connection data)
├── usb-data/            (USB device artifacts)
└── misc/                (Other extracted evidence)
```

## File Naming Convention

```
[YYYYMMDD]-[TYPE]-[DESCRIPTION].[ext]

Examples:
20241119-PST-Jean-Outlook.pst
20241119-Registry-SOFTWARE.hive
20241119-Timeline-Full.csv
20241119-Carved-Spreadsheets.zip
```

## Hash Verification

All evidence files should be hashed upon extraction:

| File | SHA-256 | MD5 | Extracted Date | Extracted By |
|------|---------|-----|----------------|--------------|
| | | | | |
| | | | | |

## Important Notes

- **Never modify original evidence files**
- **Always work on copies**
- **Document all extractions in chain of custody**
- **Verify integrity with hashes**
- **Keep backups in separate location**

## Storage Guidelines

- Minimum free space: 50GB
- Access restricted to team members
- Regular backups
- Encrypted if containing sensitive data
- Retention per project requirements

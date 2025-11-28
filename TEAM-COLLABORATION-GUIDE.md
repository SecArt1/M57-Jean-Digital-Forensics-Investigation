# M57-Jean Investigation - Team Collaboration Guide

## Purpose

This guide helps your team of 5 work effectively together on the M57-Jean digital forensics investigation.

---

## Team Structure

### Recommended Organization

**Leadership:**
- **Adham Ahmed - Lead Investigator** - Overall project coordination, quality control, final sign-off, client liaison

**Specialists:**
- **Ahmed Hani - Evidence Custodian** - Evidence handling, chain of custody, integrity verification
- **Mohamed El-Awady - Timeline Analyst** - Temporal analysis, event correlation, master timeline
- **Abdullah Hegazi - Artifact Analyst** - File system, registry, user activity artifacts
- **Hannen Abu Bakr - Communication Analyst** - Email, browser, network communications

---

## Communication Protocols

### Regular Meetings

**Weekly Team Meetings:**
- **When:** [Day/Time]
- **Duration:** 60-90 minutes
- **Platform:** [Zoom/Teams/In-person]
- **Frequency:** Weekly minimum (more frequent for accelerated timelines)
- **Agenda:**
  - Progress updates from each member
  - Findings sharing
  - Challenges and blockers
  - Next priorities
  - Evidence discoveries

**Timeline Flexibility:**
- 4-week plan: 4 weekly meetings
- 2-week intensive: 2-3 meetings per week
- 1-week sprint: Daily stand-ups recommended

**Daily Stand-ups (Optional but Recommended):**
- **When:** [Day/Time]
- **Duration:** 15 minutes
- **Format:**
  - What I did yesterday
  - What I'm doing today
  - Any blockers

### Communication Channels

**Primary:** [Slack/Discord/Teams/WhatsApp]
- `#general` - General discussion
- `#findings` - Evidence discoveries
- `#technical-help` - Tool issues, questions
- `#meetings` - Meeting coordination

**Secondary:** Email for formal communications

**Emergency:** [Phone number of Lead]

---

## Collaboration Tools

### Document Repository

**Platform:** ☐ GitHub ☐ Google Drive ☐ OneDrive ☐ Dropbox ☐ Other: _____

**Structure:**
```
Shared Drive/Repository
├── Documentation/ (This markdown structure)
├── Evidence/ (Exports, extracts)
├── Screenshots/
├── Tools-Output/
├── Reports/ (Drafts and finals)
└── Meeting-Notes/
```

**Access:** All team members have full read/write

### Version Control

**For Documentation:**
- Use Git/GitHub for markdown files
- Or use "Track Changes" in collaborative docs
- Save versions with dates: `report-v1-20241119.md`

**For Evidence:**
- Never modify originals
- Create dated copies for working files
- Document all changes

---

## Work Distribution

### Phase-Based Distribution

| Phase | Primary | Secondary | Reviewer |
|-------|---------|-----------|----------|
| 0: Initialization | Lead | All | All |
| 1: Preservation | Evidence Custodian | All | Lead |
| 2: Assessment | Artifact Analyst | All | Timeline Analyst |
| 3a: Timeline | Timeline Analyst | Communication | Lead |
| 3b: Email | Communication Analyst | Artifact | Evidence Custodian |
| 3c: Browser | Communication Analyst | Timeline | Artifact |
| 3d: File System | Artifact Analyst | Evidence | Timeline |
| 3e: Registry | Artifact Analyst | Timeline | Communication |
| 4: Correlation | Lead | Timeline | All |
| 5: Report | All | All | Lead |

### Task Assignment Board

Use a Kanban board (Trello/GitHub Projects/Physical):

**Columns:**
- Backlog
- To Do
- In Progress
- In Review
- Done

**Cards include:**
- Task description
- Assigned to
- Due date
- Dependencies
- Status

---

## Quality Assurance

### Peer Review Process

**All major findings must be peer-reviewed:**

1. **Analyst** completes analysis and documents findings
2. **Analyst** requests review in `#findings` channel
3. **Reviewer** (assigned or volunteer) validates:
   - Can reproduce the finding
   - Evidence properly documented
   - Conclusions supported
   - No errors in interpretation
4. **Reviewer** signs off or requests changes
5. **Analyst** makes corrections if needed
6. Finding marked as "Validated"

### Review Matrix

| Analysis | Analyst | Reviewer | Status | Date |
|----------|---------|----------|--------|------|
| Timeline | | | ☐ | |
| Email | | | ☐ | |
| Browser | | | ☐ | |
| File System | | | ☐ | |
| Registry | | | ☐ | |

---

## Meeting Templates

### Weekly Meeting Agenda

```
M57-Jean Investigation - Weekly Meeting
Date: [Date]
Attendees: [Names]
Duration: [Time]

1. Progress Updates (15 min)
   - [Name]: [Update]
   - [Name]: [Update]
   - ...

2. Findings Review (20 min)
   - Critical discoveries
   - Evidence validation
   - Timeline updates

3. Challenges & Blockers (15 min)
   - Technical issues
   - Resource needs
   - Clarifications needed

4. Planning Next Week (15 min)
   - Priorities
   - Task assignments
   - Dependencies

5. Action Items (5 min)
   - [ ] Task - Owner - Due Date
   - [ ] Task - Owner - Due Date

Next Meeting: [Date/Time]
```

### Finding Share Template

```
**FINDING ALERT**

**Discovered by:** [Name]
**Date:** [Date]
**Significance:** ☐ Critical ☐ High ☐ Medium ☐ Low

**Summary:**
[Brief description]

**Evidence:**
- Source: [File/location]
- Hash: [If file]
- Screenshot: [Path]
- Tool: [Tool used]

**Timeline:**
[When event occurred]

**Analysis:**
[What this means for the case]

**Validation Needed:**
[What needs to be verified]

**Next Steps:**
[Follow-up actions]
```

---

## Conflict Resolution

### When Disagreements Arise

1. **Document both interpretations**
2. **Gather additional evidence**
3. **Consult external references**
4. **Team discussion/vote if needed**
5. **Escalate to instructor if unresolved**
6. **Document uncertainty in final report**

### Workload Imbalance

If workload becomes uneven:
1. Raise in weekly meeting
2. Redistribute tasks
3. Document in contribution statement
4. Lead ensures fairness

---

## Shared Resources

### Lab Access

**Workstation 1:** [Location]
- **Access:** [Names]
- **Schedule:** [Times]

**Workstation 2:** [Location]
- **Access:** [Names]
- **Schedule:** [Times]

**Booking System:** [Method]

### Evidence Access

**Evidence Location:** [Path/Server]
**Access Credentials:** [Secure location]
**Checkout System:** Chain of custody log

---

## Progress Tracking

### Project Dashboard

Maintain a shared dashboard showing:

**Overall Progress:**
- ███████░░░ 70% Complete

**By Phase:**
- Phase 0: ██████████ 100%
- Phase 1: ██████████ 100%
- Phase 2: ██████████ 100%
- Phase 3: ████████░░ 80%
- Phase 4: ███░░░░░░░ 30%
- Phase 5: ░░░░░░░░░░ 0%

**Critical Milestones:**
- [ ] Evidence acquired - Due: [Date]
- [ ] Initial assessment done - Due: [Date]
- [ ] Timeline complete - Due: [Date]
- [ ] All analysis modules done - Due: [Date]
- [ ] Draft report ready - Due: [Date]
- [ ] Final submission - Due: [Date]

---

## Knowledge Sharing

### Documentation Requirements

**Every team member should:**
- Document their work in the appropriate .md file
- Take screenshots of significant findings
- Record all commands used
- Share findings promptly
- Update the master timeline
- Review others' work

### Training Sessions

If one member has expertise:
- **Mini-training sessions** on tools/techniques
- **Screen sharing** during complex procedures
- **Pair analysis** for difficult tasks

---

## File Management

### Naming Conventions (Strictly Enforce)

**Documents:**
```
[YYYYMMDD]-[TYPE]-[DESCRIPTION]-[INITIALS].md
```

**Screenshots:**
```
[YYYYMMDD]-P[#]-[CATEGORY]-[DESCRIPTION]-##.png
```

**Evidence:**
```
[YYYYMMDD]-[TYPE]-[SOURCE].ext
```

### No-No's

- ❌ `final_final_v2_really_final.docx`
- ❌ `Screenshot 2024-11-19 at 3.45.23 PM.png`
- ❌ `new folder (1)/copy/temp/`
- ❌ Working directly on original evidence

### Yes Please

- ✅ Descriptive names
- ✅ Date prefixes
- ✅ Organized folders
- ✅ Version numbers
- ✅ Author initials

---

## Accountability

### Individual Accountability

**Each member commits to:**
- [ ] Attend all scheduled meetings
- [ ] Complete assigned tasks on time
- [ ] Document all work thoroughly
- [ ] Peer review others' work
- [ ] Communicate blockers promptly
- [ ] Contribute to final report
- [ ] Maintain professional standards

### Team Accountability

**As a team we commit to:**
- [ ] Support each other
- [ ] Share knowledge freely
- [ ] Maintain high quality standards
- [ ] Meet all deadlines
- [ ] Produce work we're proud of
- [ ] Academic integrity

---

## Academic Integrity

### What's OK

✅ Using forensic tools and their documentation
✅ Consulting general forensic resources
✅ Asking your instructor for guidance
✅ Team collaboration on this project
✅ Learning from online tutorials (generic)

### What's NOT OK

❌ Using M57-Jean solution files from the internet
❌ Copying analysis from published solutions
❌ Plagiarizing documentation
❌ Having someone outside the team do the work
❌ Using AI to write your analysis (without disclosure)

**Remember:** Published solutions exist for this case. Avoid them for your own learning and academic integrity.

---

## Crisis Management

### If Things Go Wrong

**Evidence Corruption:**
1. Stop all work immediately
2. Verify backup copies
3. Document what happened
4. Restore from verified backup
5. Learn and prevent recurrence

**Missed Deadline:**
1. Assess impact
2. Communicate with instructor if needed
3. Revise timeline
4. Redistribute work
5. Document lessons learned

**Team Member Unavailable:**
1. Redistribute critical tasks
2. Document impact
3. Continue work
4. Update contribution statement
5. Communicate with instructor if extended

---

## Success Criteria

**We'll know we're successful when:**

- [ ] All team members feel they contributed meaningfully
- [ ] We can explain our findings confidently
- [ ] Evidence trail is complete and documented
- [ ] Report is professional and thorough
- [ ] We learned real forensic skills
- [ ] We're proud of our work
- [ ] We meet graduation requirements
- [ ] Instructor approves our submission

---

## Team Charter (Sign Below)

We, the undersigned, commit to:
- Collaborative and respectful teamwork
- High-quality forensic analysis
- Thorough documentation
- Academic integrity
- Supporting each other's learning
- Meeting all deadlines
- Producing work that meets graduation standards

**Team Members:**

1. __________________ Role: _____________ Date: _______
2. __________________ Role: _____________ Date: _______
3. __________________ Role: _____________ Date: _______
4. __________________ Role: _____________ Date: _______
5. __________________ Role: _____________ Date: _______

---

**Good luck, team! You've got this!**

# Job Search OS — Obsidian Vault

A self-contained Obsidian vault for tracking job applications, company
research, networking outreach, and resume versions — built for tech/DevOps
job seekers, but the structure works for any role.

## What's inside

```
00 - Dashboard.md        Home page — live pipeline overview (Dataview)
01 - Companies/          One note per company: tier, status, tech stack, contacts
02 - Applications/       One note per application: status, dates, resume used, next action
03 - Outreach Log/       One note per contact + a running log/index note
04 - Resume Versions/    One note per resume version: target role, ATS match %, what changed
05 - Templates/          Templater templates for creating new Company / Application / Outreach notes
```

Every note in `01 - Companies`, `02 - Applications`, `03 - Outreach Log`,
and `04 - Resume Versions` is example content with fictional companies and
people — replace it with your own. It's there so the Dashboard queries have
something real to show on first open, and so you can see the frontmatter
pattern before you build your own notes.

## Required plugins

Install these from **Settings → Community plugins → Browse** (make sure
"Restricted mode" is off first):

| Plugin | Required? | What it's for |
|---|---|---|
| **Dataview** | Required | Powers every live table on the Dashboard and the Outreach Log index. Nothing in this vault works without it. |
| **Templater** | Required | Powers the "create new note" templates in `05 - Templates`. You can skip it and copy/paste an existing note instead, but templates save time. |
| **Kanban** | Optional | Powers `02 - Applications/Pipeline Board.kanban.md`, a drag-and-drop visual board mirroring the Dataview status table. Skip it if you're happy with the Dashboard tables alone. |

After enabling Dataview and Templater, open **Settings → Templater** and
set the **Template folder location** to `05 - Templates` so the template
picker finds them.

If this vault ships with a `.obsidian/community-plugins.json` file listing
these plugin IDs, Obsidian will prompt you to install them automatically
the first time you open the vault — otherwise install them manually as
above.

## Day-to-day workflow

1. **Find a company** → create a note via the Company Template
   (`Ctrl/Cmd+P` → "Templater: Create new note from template" → pick
   *Company Template*). Set its `tier` (Dream/Target/Backup) and `status`.
2. **Apply to a role** → create a note via the Application Template. It
   prompts for the company name (link it to the company note you already
   made) and role title, and pre-fills `status: Saved`. Update `status` as
   you move through the pipeline: `Saved → Applied → OA → Interview →
   Offer`, or `Rejected` / `Withdrawn` if it ends early.
3. **Reach out to someone** → create a note via the Outreach Template
   whenever you send a real cold email/LinkedIn message worth tracking in
   detail. Quick one-off touches can just go in the manual table at the
   bottom of `03 - Outreach Log/Outreach Log.md` instead of a full note.
4. **Tailor your resume for a role** → create a note in
   `04 - Resume Versions` recording what you changed and its ATS keyword
   match score (run it through whatever ATS-checker tool you use, or
   estimate by comparing keyword overlap with the job posting). Link the
   version you used from the corresponding application note's
   `resume_version` field.
5. **Check `00 - Dashboard.md` daily** — it's fully automatic. As long as
   your notes' frontmatter is filled in and `status`/`tier`/date fields use
   the values below, the tables update themselves. You never need to edit
   the Dashboard by hand.

## Frontmatter reference

Keep new notes consistent with these fields and allowed values so the
Dataview queries keep working.

**Company** (`01 - Companies`)
`tier`: `Dream` · `Target` · `Backup`
`status`: `Researching` · `Ready to Apply` · `Applied` · `In Process` · `Closed`
plus `industry`, `company_size`, `tech_stack` (list), `location`, `website`,
`careers_page`, `glassdoor_rating`, `contact_name`, `contact_title`,
`contact_linkedin`, `date_added`.

**Application** (`02 - Applications`)
`status`: `Saved` · `Applied` · `OA` · `Interview` · `Offer` · `Rejected` · `Withdrawn`
plus `company` (link to a company note), `role`, `date_found`,
`date_applied`, `location`, `job_url`, `resume_version` (link), `referral`
(true/false), `next_action`, `next_action_date`, `salary_range`.

**Outreach** (`03 - Outreach Log`)
`channel`: `LinkedIn` · `Email` · `Referral` · `Event`
`status`: `Not Sent` · `Sent` · `Opened` · `Replied` · `Meeting Booked` · `No Response` · `Not Interested`
plus `contact_name`, `contact_title`, `company` (link), `contact_linkedin`,
`date_sent`, `follow_up_date`.

**Resume Version** (`04 - Resume Versions`)
`version_name`, `date_created`, `target_role`, `target_company` (link),
`ats_keyword_match` (0-100 number), `file_link` (path or URL to the actual
resume file, if you keep it outside the vault).

## Customizing

- **Rename statuses or tiers**: search-and-replace the old value across the
  vault (`Ctrl/Cmd+Shift+F`), then update the `WHERE`/`GROUP BY` clauses in
  `00 - Dashboard.md` and the templates in `05 - Templates` to match.
- **Add a field**: add it to the frontmatter of one note, then reference it
  in a Dataview `TABLE` column anywhere you want it to show up — no schema
  to migrate.
- **Theme**: this vault intentionally has no hardcoded colors — it's built
  to look clean under any Obsidian theme, including Catppuccin Mocha.
  Install your theme of choice from **Settings → Appearance → Themes**.

## Attribution

Built with [Claude Code](https://claude.com/claude-code).

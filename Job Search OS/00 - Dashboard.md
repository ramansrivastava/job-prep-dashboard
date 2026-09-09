---
tags: [dashboard]
---

# 🎯 Job Search Dashboard

<!--
  This is the home page of the vault. Everything below is powered by the
  Dataview plugin, which reads the YAML frontmatter properties on the notes
  in "02 - Applications", "03 - Outreach Log", and "01 - Companies" and
  renders them as live tables/lists. Nothing here needs to be edited by
  hand — just keep frontmatter on your notes accurate and these sections
  update automatically whenever you open this note.

  Allowed values used across the vault (keep new notes consistent with
  these so the queries below keep working):
    Application status : Saved, Applied, OA, Interview, Offer, Rejected, Withdrawn
    Company tier        : Dream, Target, Backup
    Company status       : Researching, Ready to Apply, Applied, In Process, Closed
    Outreach status      : Not Sent, Sent, Opened, Replied, Meeting Booked, No Response, Not Interested
-->

## 📊 Pipeline Summary

<!--
  QUERY: Counts every note in "02 - Applications" and groups them by their
  `status` property, then shows how many applications are sitting in each
  stage of the funnel. Use this as your at-a-glance funnel health check —
  a healthy pipeline usually has more weight in "Applied"/"OA" than stalled
  in "Saved".
-->
```dataview
TABLE length(rows) AS "Count"
FROM "02 - Applications"
GROUP BY status
SORT length(rows) DESC
```

<!--
  QUERY: Same idea, but grouped by company `tier` from "01 - Companies", so
  you can see whether your effort is actually going toward Dream/Target
  companies or getting eaten up chasing Backup-tier applications.
-->
```dataview
TABLE length(rows) AS "Companies"
FROM "01 - Companies"
GROUP BY tier
SORT tier ASC
```

## 🟢 Active Applications by Status

<!--
  QUERY: Lists every application note that is NOT closed out (i.e. not
  Rejected or Withdrawn), sorted by status so you can scan the whole live
  pipeline in one table. Click any row to jump straight into that
  application note.
-->
```dataview
TABLE role AS "Role", company AS "Company", status AS "Status", resume_version AS "Resume", next_action AS "Next Action", next_action_date AS "Due"
FROM "02 - Applications"
WHERE status != "Rejected" AND status != "Withdrawn"
SORT status ASC, next_action_date ASC
```

## ⏰ Upcoming Follow-Ups

<!--
  QUERY: Pulls every application that has a `next_action_date` set and
  sorts by soonest first. This is your "what do I need to do next" list —
  interview prep, thank-you notes, resume tailoring deadlines, etc.
-->
```dataview
TABLE company AS "Company", role AS "Role", next_action AS "Action", next_action_date AS "Due"
FROM "02 - Applications"
WHERE next_action_date
SORT next_action_date ASC
```

<!--
  QUERY: Same pattern, but for outreach — every contact note with a
  `follow_up_date` set, soonest first. Use this to avoid letting warm
  conversations go cold.
-->
```dataview
TABLE contact_name AS "Contact", company AS "Company", channel AS "Channel", status AS "Status", follow_up_date AS "Due"
FROM "03 - Outreach Log"
WHERE follow_up_date AND contact_name
SORT follow_up_date ASC
```

## 🏢 Companies to Research or Reach Out To

<!--
  QUERY: Surfaces Dream/Target companies you haven't taken action on yet
  (status still "Researching" or "Ready to Apply"), so this list never
  stays empty and you always have a next target.
-->
```dataview
TABLE tier AS "Tier", status AS "Status", industry AS "Industry"
FROM "01 - Companies"
WHERE status = "Researching" OR status = "Ready to Apply"
SORT tier ASC
```

## 📄 Resume Versions in Play

<!--
  QUERY: Lists all resume versions with their ATS keyword match score, so
  you can quickly see which version to reuse for a similar role.
-->
```dataview
TABLE target_role AS "Target Role", target_company AS "Tailored For", ats_keyword_match AS "ATS Match %", date_created AS "Created"
FROM "04 - Resume Versions"
SORT ats_keyword_match DESC
```

---
*Tip: open [[05 - Templates/Application Template|Application Template]], [[05 - Templates/Company Template|Company Template]], or [[05 - Templates/Outreach Template|Outreach Template]] via Templater to create new notes with the frontmatter already filled in.*

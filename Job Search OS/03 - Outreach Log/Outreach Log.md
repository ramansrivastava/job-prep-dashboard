---
tags: [outreach-log]
---

# 📨 Outreach Log

A running log of every cold email / LinkedIn touch, most recent first. Each
row summarizes one contact note in this folder — open the linked note for
full message history and context.

<!--
  QUERY: Auto-generated table of every contact note in this folder, pulled
  straight from their frontmatter. Add a new contact note (via the
  Outreach Template) and it appears here automatically — you don't need
  to hand-maintain this table.
-->
```dataview
TABLE contact_name AS "Contact", contact_title AS "Title", company AS "Company", channel AS "Channel", date_sent AS "Sent", status AS "Status", follow_up_date AS "Follow-up"
FROM "03 - Outreach Log"
WHERE contact_name
SORT date_sent DESC
```

## Manual log (optional freeform entries)

Use this section for quick one-off touches that don't warrant a full
contact note (e.g. a comment on a LinkedIn post, a quick "congrats on the
new role").

| Date | Contact | Company | Channel | Note |
|---|---|---|---|---|
| 2026-08-28 | Dana Okafor | Ironclad Data | LinkedIn | Liked + commented on their Terraform module library post before reaching out |
| 2026-08-30 | Priya Shah | Nimbus Cloudworks | LinkedIn | Thanked her again after the referral went through |

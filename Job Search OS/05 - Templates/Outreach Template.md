<%*
/*
  Templater template — creates a new note in "03 - Outreach Log" with
  frontmatter pre-filled. Run it via Templater's "Create new note from
  template" command, or set it as the folder template for
  "03 - Outreach Log" so it fires automatically.

  Allowed values (keep consistent with the Dashboard queries):
    channel : LinkedIn | Email | Referral | Event
    status  : Not Sent | Sent | Opened | Replied | Meeting Booked | No Response | Not Interested
*/
const contactName = await tp.system.prompt("Contact name");
const companyName = await tp.system.prompt("Company name (must match an existing note in 01 - Companies)");
await tp.file.rename(`${contactName} - ${companyName}`);
-%>
---
contact_name: <% contactName %>
contact_title:
company: "[[<% companyName %>]]"
contact_linkedin:
channel: LinkedIn
date_sent: <% tp.date.now("YYYY-MM-DD") %>
status: Sent
follow_up_date:
tags: [outreach, status/sent]
---

# <% contactName %> — <% companyName %>

## Message sent (<% tp.date.now("YYYY-MM-DD") %>)
>

## Response


## Outcome


## Notes


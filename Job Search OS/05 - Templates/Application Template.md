<%*
/*
  Templater template — creates a new note in "02 - Applications" with
  frontmatter pre-filled and linked back to a company note. Run it via
  Templater's "Create new note from template" command, or set it as the
  folder template for "02 - Applications" so it fires automatically.

  Tip: create the company note first (via Company Template) so the link
  below resolves correctly.

  Allowed values (keep consistent with the Dashboard queries):
    status : Saved | Applied | OA | Interview | Offer | Rejected | Withdrawn
*/
const companyName = await tp.system.prompt("Company name (must match an existing note in 01 - Companies)");
const role = await tp.system.prompt("Role title");
await tp.file.rename(`${companyName} - ${role}`);
-%>
---
company: "[[<% companyName %>]]"
role: <% role %>
date_found: <% tp.date.now("YYYY-MM-DD") %>
date_applied:
status: Saved
location:
job_url:
resume_version:
referral: false
next_action:
next_action_date:
salary_range:
tags: [application, status/saved]
---

# <% role %> — <% companyName %>

## Job description notes


## Application checklist
- [ ] Resume tailored
- [ ] Cover letter written
- [ ] Application submitted
- [ ] Confirmation email received

## Timeline log
- <% tp.date.now("YYYY-MM-DD") %> — Saved

## Interview prep notes


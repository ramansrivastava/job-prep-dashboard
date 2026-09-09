<%*
/*
  Templater template — creates a new note in "01 - Companies" with
  frontmatter pre-filled. Run via the Templater command palette action
  "Templater: Create new note from template" and pick this file, or set it
  as the folder template for "01 - Companies" in Templater's settings so
  it fires automatically whenever you create a note in that folder.

  Allowed values (keep consistent with the Dashboard queries):
    tier   : Dream | Target | Backup
    status : Researching | Ready to Apply | Applied | In Process | Closed
*/
const companyName = await tp.system.prompt("Company name");
await tp.file.rename(companyName);
-%>
---
company: <% companyName %>
tier: Target
status: Researching
industry:
company_size:
tech_stack: []
location:
website:
careers_page:
glassdoor_rating:
contact_name:
contact_title:
contact_linkedin:
date_added: <% tp.date.now("YYYY-MM-DD") %>
tags: [company, tier/target]
---

# <% companyName %>

## Why this company


## Research notes


## Key contacts


## Related applications
```dataview
LIST role
FROM "02 - Applications"
WHERE contains(company, this.file.link)
```

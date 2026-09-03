# Job-Oriented CS Curriculum — Derived from the 200-Company Research

*Primary source of truth: the skill-frequency analysis from your 200 Indian startup/product company research (Top 20 languages/technologies, Top technical skills, CS fundamentals frequency, most common frameworks) plus the per-company Required/Preferred fields. This is not a generic CS syllabus — every module exists because it showed up repeatedly in that dataset, and modules are ordered/weighted by how often they appeared.*

## How this curriculum was built

I took three inputs directly from your research and turned them into a study order:

1. **Frequency → Priority.** DSA, DBMS/SQL, OOP, Git, and REST APIs topped both the "Top Technical Skills" and appeared in nearly every one of the 200 company rows — so they're Phase 1, non-negotiable, and get the most hours.
2. **Language/framework dominance → Primary stack choice.** Java was the single most-requested language across your SDE-1/backend rows (Zoho, Groww, Razorpay, Flipkart, Udaan, Freshworks, Darwinbox, Icertis, Zenoti, LeadSquared, and most GCC/product-company campus tracks), with Spring Boot as the dominant backend framework. **Java + Spring Boot is therefore your primary language/framework track.** Python stays as your secondary language (you already have it, and it's required for the AI/ML/Data-tagged companies).
3. **Your existing strengths → Where you already win.** Linux, Docker, AWS fundamentals, Bash/networking are already strong per your resume, and they map directly onto the "Cybersecurity/Cloud/DevOps-heavy" segment of your research (AWS Cloud Support Associate, Druva, NetApp, Cisco, HPE, etc.) — the highest-FAS, lowest-competition segment for you. This curriculum treats that as your **specialization lane**, not something to relearn from scratch.

**Net result:** a curriculum with one mandatory core (clears the bar at all 200 companies), one primary specialization (Backend + Cloud/DevOps — matches your existing strengths and the highest-scoring segment in your research), and optional secondary tracks (Full-Stack, AI/ML/Data, QA/SDET) so you can broaden later without re-doing the core.

---

## Phase 0 — Where you stand today (baseline against the research)

| Research-identified skill | Frequency in your 200 companies | Your current level | Gap |
|---|---|---|---|
| Linux | High (esp. Cloud/DevOps segment) | Strong | None — leverage it |
| AWS (EC2/S3/IAM/VPC) | High (Cloud, GCC, product infra) | Strong (fundamentals) | Certification only |
| Docker | High | Strong | Extend to Kubernetes |
| Bash/scripting | Medium-high | Strong | None |
| Networking (TCP/IP/DNS) | Medium (esp. support/DevOps roles) | Strong | None |
| **DSA** | **Highest across all 200** | Weak/undemonstrated | **Largest gap — Phase 1 priority** |
| Java | #1 requested language | Not on resume | **Major gap — new primary language** |
| SQL/DBMS | Very high | Basic/unverified | Needs structured study |
| OOP | Very high | Coursework only | Needs applied practice |
| REST APIs | High | Some (Nextcloud/homelab exposure) | Needs formal practice |
| System design (basic) | Medium-high | None | New topic, Phase 3 |
| Kubernetes | Medium (growing) | None | New topic, Phase 3 |
| CI/CD | Medium | None | New topic, Phase 2-3 |
| React/Node.js | Medium (full-stack roles) | None | Optional secondary track |

This is why the curriculum below front-loads DSA + Java + SQL (your biggest gaps against the highest-frequency requirements) while treating your cloud/Linux/Docker strength as a specialization to extend, not rebuild.

---

## PHASE 1 — Core Foundation (Weeks 1–5) — mandatory for essentially all 200 companies

*This phase alone is what nearly every company in your research checks for, regardless of sector — fintech, SaaS, e-commerce, healthtech, edtech all list the same base.*

**Week 1–2: Data Structures & Algorithms — Part 1**
- Arrays, strings, hashing, two-pointers, sliding window, basic recursion.
- Practice: 3–4 problems/day (LeetCode Easy → Medium), focused on patterns, not volume.
- Why: DSA is the #1 CS fundamental across your entire 200-company dataset — it gates the resume screen and the first technical round almost everywhere from Razorpay to Zoho to Flipkart.

**Week 2–3: Java Fundamentals**
- Syntax, OOP in Java (classes, inheritance, interfaces, polymorphism, abstraction), collections framework, exception handling.
- Why: Java is your #1-requested language across the dataset. Learning OOP *through* Java kills two required-skill birds (Java + OOP) with one stone — both appear as separate "Required" line items across most of your company rows.

**Week 3–4: DSA — Part 2**
- Linked lists, stacks/queues, trees (binary trees, BSTs), basic graphs (BFS/DFS).
- Practice: continue 3–4 problems/day; start timing yourself.

**Week 4–5: SQL & DBMS**
- SQL: SELECT, JOINs (all types), GROUP BY/HAVING, subqueries, indexing basics, window functions (basic).
- DBMS theory: normalization, ACID, transactions, keys/constraints — this is the "DBMS" line item that appears as a named CS fundamental across a large share of your 200 rows (especially GCC/BFSI, product companies, and data-adjacent roles).
- Practice: 30–40 SQL problems (any free platform) until comfortable with multi-table JOINs.

**Week 5: Git/GitHub — formalize what you already do**
- You already use Git; this week is about interview-readiness: branching strategies, rebase vs merge, resolving conflicts, PR workflow, writing clean commit history.
- Deliverable: clean up your existing repos' commit history and READMEs as you go — this doubles as portfolio work.

---

## PHASE 2 — Backend + Web Fundamentals (Weeks 6–10)

*This is where "Required: Java, DSA, OOP, DBMS" turns into "Preferred: REST APIs, Spring Boot, microservices" — the layer that separates a shortlisted resume from a rejected one across your Tier A/B companies.*

**Week 6–7: REST API design + Spring Boot basics**
- HTTP fundamentals (methods, status codes, headers) — you already know networking, so this is fast.
- Spring Boot: controllers, services, repositories, dependency injection, building a CRUD REST API.
- Why: Spring Boot is the dominant backend framework across your Java-requesting companies (Razorpay, Groww, Darwinbox, Icertis, Zenoti, LeadSquared, and most GCC Java tracks).

**Week 8: SQL + Spring Boot integration**
- Connect your Spring Boot API to a real database (PostgreSQL or MySQL) using JPA/Hibernate.
- Deliverable: a working CRUD REST API with a real database backend — your first "backend developer" portfolio project, directly answering the "Required: Java/Spring Boot, SQL, REST APIs" pattern seen across dozens of your company rows.

**Week 9: DSA — Part 3 (Medium-heavy)**
- Dynamic programming (basics — knapsack, subsequence patterns), heaps/priority queues, advanced graphs (Dijkstra, Union-Find).
- Practice: shift to Medium-difficulty problems, 3-4/day, timed.

**Week 10: System Design — Basics**
- Client-server model, load balancing, caching, database scaling (replication/sharding at a conceptual level), CAP theorem basics, designing a simple system (e.g., URL shortener, rate limiter).
- Why: "System design (basic)" appears as a named CS fundamental in a meaningful share of your product-company rows (Razorpay, Flipkart, Swiggy-tier companies) — not expected at FAANG depth for a fresher, but expected to be conversational.

---

## PHASE 3 — Your Specialization Lane: Cloud/DevOps + Distributed Systems (Weeks 11–15)

*This phase deliberately builds on what you already have (Linux, AWS, Docker) rather than starting cold — it's the fastest path to a genuinely differentiated resume against the "Cybersecurity/Cloud/DevOps-heavy" segment of your research (AWS Cloud Support Associate, Druva, NetApp, Cisco, HPE, Delhivery, Shiprocket) and the DevOps-tagged rows across other sectors.*

**Week 11: Kubernetes fundamentals**
- Pods, deployments, services, ConfigMaps/Secrets.
- Hands-on: deploy one of your existing Dockerized projects (Nextcloud) onto k3s/minikube on your homelab.
- Why: "Kubernetes" appears repeatedly as a Preferred skill across your DevOps/cloud/backend rows — one of your largest remaining gaps.

**Week 12: CI/CD**
- Build a GitHub Actions pipeline: build → test → containerize → (optionally) deploy.
- Apply it to your new Spring Boot API project from Phase 2 — this ties Phase 2 and Phase 3 together into one coherent portfolio piece.

**Week 13: AWS certification push**
- AWS Cloud Practitioner (you already have the fundamentals — this converts existing knowledge into a credential that directly matches the AWS Cloud Support Associate JD requirements and the "AWS" preferred-skill line across most Cloud/DevOps rows).
- Sit the exam by end of week if ready.

**Week 14: Microservices + Distributed Systems basics**
- Service-to-service communication, message queues (Kafka basics — appears repeatedly as a "Required/Preferred" item at Delhivery, Shiprocket, and several product-company backend rows), basic monitoring (Prometheus, connecting to your existing Grafana/InfluxDB setup).

**Week 15: Terraform (IaC)**
- Rebuild your existing AWS VPC project as Terraform code.
- Deliverable: a portfolio repo showing Docker + Kubernetes + CI/CD + Terraform + AWS in one coherent narrative — this is the single strongest asset for the Cloud/DevOps-heavy segment of your 200-company list.

---

## PHASE 4 — Interview-Ready DSA + System Design (Weeks 16–18)

**Week 16–17: DSA — Interview intensity**
- Full mixed practice: 5-6 problems/day across all patterns learned so far (arrays/strings/hashing/two-pointer/DP/trees/graphs), timed under interview conditions.
- Start doing problems specifically tagged for companies in your list where public interview experiences exist (Juspay is DSA/OS/LLD-heavy per your research; Razorpay, Flipkart, Groww all DSA-heavy).

**Week 18: Low-Level Design (LLD) + mock interviews**
- Basic LLD: design patterns (Singleton, Factory, Observer, Strategy — the commonly-asked ones), applying OOP to a small design problem (e.g., design a parking lot, design a rate limiter class).
- Why: your research flagged Juspay specifically as "DSA/OS/LLD-heavy" — LLD is a distinguishing skill most freshers skip, and it's cheap to learn once OOP is solid (Phase 1).
- Do 2–3 mock interviews (peer, mentor, or a mock-interview platform) covering DSA + one project deep-dive + basic system design.

---

## OPTIONAL Phase 5 — Pick ONE secondary track to widen your net (Weeks 19–22)

*Your research covers Full Stack, Frontend, AI/ML, Data, QA/SDET, Cybersecurity, and Mobile as separate career paths. You don't need all of them — pick the one that best complements your Cloud/DevOps specialization and interests you. Each below is ~4 weeks, reusing Phase 1–3 skills rather than starting over.*

**Option A — Full-Stack (broadens you into the largest single opening category in your research: "Full-stack developer has the most absolute openings")**
- React fundamentals (components, hooks, state) — Week 19-20.
- Connect React frontend to your existing Spring Boot API — Week 21.
- Deploy the full stack (frontend + backend + DB) using what you built in Phase 3 (Docker, CI/CD, AWS) — Week 22.

**Option B — AI/ML/Data (matches the AI/ML-startup segment and your existing AI mentorship background)**
- Python for data (Pandas, NumPy) — Week 19.
- SQL for analytics + basic ML (scikit-learn: classification/regression) — Week 20-21.
- One end-to-end project: data pipeline → model → simple API to serve predictions (ties back to your Spring Boot/Docker skills) — Week 22.

**Option C — QA/SDET (lower DSA-gatekeeping, good fit if interview rounds feel like the bottleneck)**
- Manual + automated testing fundamentals, Selenium or Playwright basics — Week 19-20.
- API testing (Postman, REST Assured) — Week 21.
- CI integration of your test suite (reuses Phase 3 CI/CD skill) — Week 22.

**Option D — Cybersecurity (matches the Cybersecurity/Cloud segment, complements your Linux/networking strength)**
- Networking security fundamentals, OWASP Top 10 — Week 19-20.
- Basic SOC/security-analyst tooling awareness (log analysis, SIEM concepts) — Week 21.
- Apply security scanning to one of your existing Docker/K8s projects — Week 22.

*Recommendation: given your existing Linux/AWS/Docker strength and that DevOps/Cloud is already your Phase 3 specialization, **Option A (Full-Stack)** gives you the broadest additional reach into the largest opening category, while Option D (Cybersecurity) gives you the tightest synergy with what you already know. Either is a reasonable choice — avoid trying to do more than one in parallel.*

---

## Depth calibration — how deep is deep enough

| Topic | Depth needed for this candidate pool | Not needed (skip for now) |
|---|---|---|
| DSA | Comfortable with Easy-Medium LeetCode across all patterns; can explain time/space complexity | Hard-tier competitive programming, advanced graph algorithms (Segment trees, advanced DP) |
| System Design | Can whiteboard a simple system (URL shortener, rate limiter) and discuss trade-offs | Designing systems at Google/Meta interview depth |
| Java/Spring Boot | Can build a working CRUD REST API with a DB | Reactive programming, advanced Spring ecosystem (Spring Cloud, Spring Security depth) |
| Kubernetes | Can deploy and manage a basic app on k3s/minikube | Service mesh, operators, multi-cluster management |
| SQL | Comfortable with JOINs, aggregations, indexing concepts | Query optimization at DBA depth, advanced window functions |
| AWS | Cloud Practitioner level, hands-on with EC2/S3/IAM/VPC | Multi-account architecture, advanced Well-Architected Framework |

---

## How this maps back to your research (quick cross-reference)

- **Phase 1 (DSA, Java, OOP, SQL, Git)** → clears the "Required" bar listed on essentially every one of the 200 company rows.
- **Phase 2 (REST APIs, Spring Boot, System Design basics)** → clears the "Preferred" bar for your Tier A/B SaaS, fintech, and product-company rows.
- **Phase 3 (Kubernetes, CI/CD, AWS cert, Terraform, Kafka basics)** → directly targets your highest-FAS segment: AWS Cloud Support Associate, Druva, NetApp, Cisco, Delhivery, Shiprocket, and the broader Cloud/DevOps-heavy group.
- **Phase 4 (DSA intensity + LLD)** → specifically addresses Juspay's flagged "DSA/OS/LLD-heavy" bar and the general product-company interview pattern (Razorpay, Flipkart, Groww).
- **Phase 5 (optional secondary track)** → widens your addressable share of the 200 companies into Full-Stack/AI-ML/QA/Cybersecurity without discarding anything from Phases 1–3.

## What NOT to prioritize right now
- A second backend language (Go, C#) — Java covers the highest-frequency requirement in your dataset; add a second language later if a specific target company demands it.
- Deep frontend frameworks beyond React basics (Next.js SSR internals, advanced state management libraries) unless you commit fully to the Full-Stack secondary track.
- Advanced ML (deep learning frameworks, MLOps) unless you commit to the AI/ML secondary track — your research shows most AI/ML-tagged companies in your list are senior-skewed for freshers anyway.
- A second cloud provider (Azure/GCP) — AWS depth matches your existing strength and the dominant cloud reference in your research.

## Suggested pace
~15-18 hrs/week (roughly what you were already running in the earlier 8-week infra plan, extended here because this curriculum is broader — it adds the DSA/Java/SQL/System-Design layer that the infra-only plan didn't cover). Keep applying throughout — start applying to Tier A/high-FAS companies as soon as Phase 1 is solid; don't wait for Phase 5 to begin submitting applications.

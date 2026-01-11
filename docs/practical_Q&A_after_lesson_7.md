# ✅ SET 1 — STATE, PROVIDER, ENVIRONMENT ISOLATION

### 1️⃣ Why is the provider still pointing to the seed project?

#### The provider points to the seed project because Terraform needs a stable, trusted execution context with permissions to create and manage other projects. The seed project acts as the control plane, not the workload environment.

### How Billing Accounts are managed? one billing account or multiple?

- Small/medium orgs: One centralized billing account (most common)
- Large enterprises: Multiple billing accounts per BU / cost center

#### “Billing accounts are usually centralized initially and later split for cost isolation and governance.”

---

### 2️⃣ Why does each environment need its own backend prefix?

#### Each environment needs its own backend prefix to ensure state isolation, limit blast radius, enable independent lifecycle management, and support safe recovery without cross-environment impact.

#### “State isolation defines operational boundaries.”

---

### 3️⃣ What would break if dev and prod shared the same module but different state?

#### Using the same module with different state is the correct pattern. What breaks is when dev and prod share the same state, not the same module. State must be isolated; modules should be reused.

#### “We reuse modules, never state.”

---

# ✅ SET 2 — FOLDER, ORG, PERSONAL VS ENTERPRISE

### 1️⃣ Why did we design folder_id as optional?

#### We designed folder_id as optional to allow the same module to function in both enterprise orgs and personal accounts, enabling graceful degradation instead of hard failure.

---

### 2️⃣ How would this (folder) module behave differently in a real enterprise org?

#### In a real enterprise org, this module would place projects under specific folders, inherit org policies, enforce governance constraints, and align with cost and access boundaries defined at higher levels.

#### 📌 Key idea:

#### Same code, different context, stricter guardrails.

---

### 3️⃣ Why is forcing enterprise structure on personal accounts a bad idea?

### Forcing enterprise structures on personal accounts is a bad idea because those primitives don’t exist. It increases friction, breaks learning workflows, and introduces unnecessary complexity without adding real governance value.

#### “Architecture must match platform maturity.”

---

# ✅ SET 3 — PROJECT IDS, IMPORTS, SCALE

### 1️⃣ Why can’t Terraform auto-fix project ID collisions?

#### Terraform cannot auto-fix project ID collisions because project IDs are globally unique identifiers enforced by the cloud provider. Terraform cannot invent or mutate identity decisions without user intent.

#### “Identity must be explicit, never implicit.”

---

### 2️⃣ Why is importing an existing project risky in early platform design?

#### Importing an existing project is risky early on because Terraform assumes ownership without historical context, which can lead to unintended deletions, drift, and incorrect assumptions about the current state.

#### “Importing is adopting risk, not just resources.”

---

### 3️⃣ How would a large enterprise guarantee project ID uniqueness?

#### Enterprises guarantee uniqueness through enforced naming standards, automated suffix generation, and centralized project creation pipelines.

#### “Uniqueness is enforced by process, not by chance.”

---

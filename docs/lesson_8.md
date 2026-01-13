# 🚀 LESSON 8 — ENVIRONMENT OWNERSHIP MODEL

#### You will understand:

- Who owns dev
- Who owns prod
- Why prod access should feel dangerous
- How Terraform enforces boundaries

### 🧠 PART 1 — ENVIRONMENTS ARE TRUST ZONES

#### Dev:

- Experimental
- Fast feedback
- Broad access (but not admin)

#### Prod:

- Revenue-impacting
- Locked down
- Audited
- Fear is healthy 😄

#### “Environments represent trust boundaries, not just stages.”

### 🧱 PART 2 — REAL ENTERPRISE OWNERSHIP MODEL

![alt text](images/env_ownership_example.PNG)

#### Workload teams:

- ❌ Cannot create projects
- ❌ Cannot change IAM in prod
- ❌ Cannot bypass pipelines

### 🔐 PART 3 — IAM MODEL (PRACTICAL)

#### We now stop using humans for infra changes.

#### Principle:

- Humans commit code.
- Pipelines apply infrastructure.

### 🛠️ WHAT YOU WILL IMPLEMENT NEXT

#### Step 1 — Create environment-level Terraform SA

![alt text](images/for_dev_project.PNG)

#### Step 2 — Grant minimal roles

![alt text](images/minimal_role.PNG)

#### 🧠 WHY THIS MATTERS?

#### You’re now designing:

- Ownership boundaries
- Blast-radius control
- Promotion safety
- Audit trails
- This is exactly what Platform Engineers do.

---

# Q & A

### Why should prod access feel uncomfortable?

- Highest responsibility
- Real users
- Blast radius
- External threats

#### Production access should feel uncomfortable because it represents the highest blast radius. Any mistake directly impacts customers, revenue, and trust. Discomfort creates discipline, caution, and respect for process — which are essential for operating critical systems.

#### “Comfort in production is a warning sign.”

---

### Why should humans not apply Terraform in prod?

- Zero-trust
- Human error
- Repeatability
- Rollback and recovery

#### Humans should not apply Terraform in production because infrastructure changes must be deterministic, auditable, repeatable, and reversible. CI/CD pipelines enforce consistency, peer review, and traceability, while minimizing the risk of human error.

#### “Humans review changes; systems apply them.”

---

### What happens if the dev service account has prod permissions?

- Chaos
- Security risk
- Loss of separation
- No value in environments

#### If a dev service account has prod permissions, environment boundaries collapse. This enables accidental or malicious changes, breaks auditability, and invalidates the purpose of having separate environments.

#### “Shared identity equals shared blast radius.”

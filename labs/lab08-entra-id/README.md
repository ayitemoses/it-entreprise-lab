# Lab 8 – Microsoft Entra ID Identity and Access Management

## Overview

This lab focuses on **Microsoft Entra ID** and the fundamentals of cloud identity and access management in a Microsoft 365 environment.

The objective is to understand how identities, groups, administrative roles, authentication methods, and Role-Based Access Control (RBAC) are managed in Microsoft Entra ID.

This lab also documents the capabilities and licensing limitations of **Microsoft Entra ID Free** within a Microsoft 365 Business Basic environment.

---

## Objectives

The main objectives of this lab are to:

* Access and navigate the Microsoft Entra admin center
* Review Microsoft Entra users
* Review Microsoft Entra groups
* Review administrative roles
* Understand Role-Based Access Control (RBAC)
* Perform an RBAC delegation exercise
* Review available authentication methods
* Understand Microsoft Entra ID licensing
* Identify features unavailable with Microsoft Entra ID Free
* Document the configuration and results with screenshots

---

## Environment

| Component             | Configuration                    |
| --------------------- | -------------------------------- |
| Identity Platform     | Microsoft Entra ID               |
| Microsoft 365 License | Microsoft 365 Business Basic     |
| Entra ID Edition      | Microsoft Entra ID Free          |
| Administration Portal | Microsoft Entra admin center     |
| Focus                 | Identity and Access Management   |
| Access Control        | Role-Based Access Control (RBAC) |

---

## Lab Tasks

### 1. Microsoft Entra Admin Center

Accessed the Microsoft Entra admin center and reviewed the main identity and access management capabilities available in the tenant.

The administration portal provides centralized management of users, groups, roles, authentication methods, and other identity-related resources.

---

### 2. Microsoft Entra Users

Reviewed the users configured in Microsoft Entra ID.

The exercise covered the basic management and inspection of cloud identities, including user accounts and their associated directory information.

**Evidence:** screenshots are available in the [`screenshots/`](screenshots/) directory.

---

### 3. Microsoft Entra Groups

Reviewed the groups available in the Microsoft Entra tenant.

Groups provide an important mechanism for organizing identities and assigning access to resources and services.

**Evidence:** screenshots are available in the [`screenshots/`](screenshots/) directory.

---

### 4. Administrator Roles

Reviewed the administrative roles available in Microsoft Entra ID.

The exercise demonstrated the importance of assigning administrative permissions according to responsibility rather than providing excessive privileges.

This introduces the principle of **least privilege**, which is an important concept in modern identity and access management.

**Evidence:** screenshots are available in the [`screenshots/`](screenshots/) directory.

---

### 5. RBAC Delegation

Performed a **Role-Based Access Control (RBAC)** delegation exercise.

The purpose of the exercise was to understand how Microsoft Entra administrative roles can be used to delegate specific administrative responsibilities without granting unrestricted access.

This demonstrates the practical application of:

* Least privilege
* Administrative delegation
* Role-based permissions
* Separation of responsibilities

**Evidence:** screenshots are available in the [`screenshots/`](screenshots/) directory.

---

### 6. Authentication Methods

Reviewed the authentication methods available within the Microsoft Entra environment.

Authentication methods are a key component of identity security because they determine how users prove their identity when accessing organizational resources.

The exercise provided an overview of the authentication capabilities available in the current licensing configuration.

**Evidence:** screenshots are available in the [`screenshots/`](screenshots/) directory.

---

## Licensing Considerations

The lab environment uses **Microsoft 365 Business Basic**, which includes **Microsoft Entra ID Free**.

As a result, some advanced identity and security capabilities are not available in the current environment.

The following features require Microsoft Entra ID P1 or P2 capabilities and were therefore documented rather than implemented as part of this lab:

* Conditional Access
* Privileged Identity Management (PIM)
* Microsoft Entra ID Protection

This limitation is intentional and is documented to distinguish between the capabilities demonstrated in the lab and features that would require additional licensing.

---

## Documentation

Detailed lab documentation is available in the [`documentation/`](documentation/) directory.

The documentation contains the procedures, observations, configuration details, and results associated with the exercises completed during Lab 8.

---

## Screenshots

Supporting screenshots are stored in:

```text
screenshots/
```

The screenshots provide visual evidence of the configuration and exercises performed during the lab.

---

## Skills Demonstrated

This lab demonstrates practical knowledge of:

* Microsoft Entra ID
* Cloud identity management
* Microsoft 365 administration
* User management
* Group management
* Administrative roles
* Role-Based Access Control (RBAC)
* Least privilege
* Authentication methods
* Identity governance fundamentals
* Microsoft licensing considerations
* Technical documentation
* Evidence-based lab reporting

---

## Repository Structure

```text
.
├── README.md
├── documentation/
│   └── ...
└── screenshots/
    └── ...
```

The repository separates the written lab documentation from the visual evidence collected during the exercises.

---

## Lab Status

**Status:** Completed ✅

The Microsoft Entra ID identity and access management exercises have been completed and documented.

The repository includes the required documentation and supporting screenshots for Lab 8.

---

## Key Takeaways

Lab 8 demonstrates the transition from traditional on-premises identity management toward **cloud-based identity and access management with Microsoft Entra ID**.

The lab highlights several core enterprise identity concepts:

1. Centralized identity management
2. Group-based organization
3. Administrative role delegation
4. Least-privilege access
5. Authentication management
6. Licensing-aware security design

These concepts provide the foundation for more advanced hybrid and modern management scenarios, including **Active Directory synchronization, Microsoft Intune, Windows device management, compliance, and security policies**.


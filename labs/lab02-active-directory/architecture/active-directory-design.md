# Active Directory Architecture Design

## Overview

This document describes the Active Directory architecture deployed for the TechSolutions laboratory environment.

## Domain Information

| Component | Value |
|---|---|
| Forest | techsolutions.local |
| Domain | techsolutions.local |
| NetBIOS Name | TECHSOLUTIONS |
| Domain Controller | DC01 |

---

## Infrastructure

             VMnet2
        192.168.10.0/24


              DC01
    Windows Server 2025

          +---------+
          |  AD DS  |
          +---------+

          +---------+
          |   DNS   |
          +---------+

              |
              |
    techsolutions.local

    
---

## Domain Controller Role

DC01 provides:

- Active Directory Domain Services
- DNS Services
- Global Catalog
- Authentication services

---

## Organizational Structure

Planned OU structure:

techsolutions.local

├── Users
│ ├── IT
│ ├── HR
│ ├── Finance
│ └── Sales
│
├── Computers
│ ├── Workstations
│ └── Servers
│
└── Groups



---

## Future Components

The following components will be added in future labs:

- Windows 11 client machines
- DHCP Server
- Group Policies
- File Server
- Microsoft Intune integration
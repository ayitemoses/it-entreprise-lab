# LAB 02 - Active Directory Domain Services

## Context

This laboratory consists of deploying the first Microsoft Windows Server infrastructure component for the Enterprise IT Lab.

The DC01 server will become the Active Directory Domain Controller.

---

# Objectives

- Install Windows Server 2025 on DC01
- Configure server identity
- Configure static networking
- Install Active Directory Domain Services
- Create the first domain
- Validate DNS functionality

---

# Infrastructure

## Server

| Name | OS | Role |
|-|-|-|
| DC01 | Windows Server 2025 | Domain Controller |

---

# Network

Network:

VMnet2

Subnet:

192.168.10.0/24

Server IP:

192.168.10.10

---

# Domain

Planned domain:

techsolutions.local

---


## Architecture Documentation

The Active Directory architecture design is available here:

- architecture/active-directory-design.md

---

# Progress

- [x] Install Windows Server
- [x] Rename server to DC01
- [x] Configure static IP
- [x] Install AD DS
- [x] Create Active Directory domain
- [x] Validate DNS

## Skills Practiced

- Windows Server Administration
- Active Directory Domain Services
- DNS
- Domain Controller deployment
- Organizational Units
- Git workflow
- Technical documentation

## Result

A fully functional Active Directory environment was successfully deployed for the TechSolutions laboratory.
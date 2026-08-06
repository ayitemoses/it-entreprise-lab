# Lab 06 - DHCP Server Configuration

## Objective

The objective of this lab is to deploy and configure the Dynamic Host Configuration Protocol (DHCP) service on Windows Server 2025 to automatically assign IP addresses and network settings to client computers in the Active Directory environment.

At the end of this lab, Windows 11 clients will automatically receive their IP configuration from the DHCP server.

---

# Lab Environment

| Component | Configuration |
|------------|---------------|
| Domain Controller | DC01 |
| Operating System | Windows Server 2025 |
| Roles Installed | Active Directory Domain Services (AD DS), DNS, DHCP |
| Domain | techsolutions.local |
| Client | WIN11-01 (Windows 11) |
| Virtualization Platform | VMware Workstation Pro |

---

# Architecture

```text
                     TechSolutions.local

                           DC01
                Windows Server 2025
            AD DS + DNS + DHCP Server
                           |
                    192.168.10.10
                           |
                -----------------------
                           |
                         WIN11-01
                    Windows 11 Client
                  DHCP Enabled Client
```

---

# Prerequisites

Before configuring DHCP, the following requirements were completed:

- VMware virtual network configured.
- Windows Server 2025 installed.
- Active Directory Domain Services deployed.
- DNS server configured.
- Windows 11 successfully joined to the Active Directory domain.
- Network connectivity verified between DC01 and WIN11-01.

---

# Step 1 - Install the DHCP Server Role

The DHCP Server role was installed using **Server Manager**.

Navigation:

```text
Server Manager
    └── Manage
          └── Add Roles and Features
```

The following role was selected:

- DHCP Server

After the installation completed successfully, the DHCP configuration wizard was launched.

**Screenshot**

- DHCP Server role installation

---

# Step 2 - Authorize the DHCP Server

After installation, the DHCP server was authorized in Active Directory.

Navigation:

```text
Server Manager
    └── Notifications
          └── Complete DHCP Configuration
```

The current domain administrator credentials were used to authorize the server.

Successful authorization confirms that the DHCP server is allowed to lease IP addresses within the Active Directory environment.

**Screenshot**

- DHCP authorization completed

---

# Step 3 - Create an IPv4 Scope

A new IPv4 scope was created to define the address pool that will be assigned to client computers.

Navigation:

```text
Server Manager
    └── Tools
          └── DHCP
```

```text
DC01
└── IPv4
      └── New Scope
```

Configuration:

| Setting | Value |
|----------|-------|
| Scope Name | TechSolutions LAN |
| Description | DHCP Scope for client computers |
| Start IP Address | 192.168.10.100 |
| End IP Address | 192.168.10.200 |
| Subnet Mask | 255.255.255.0 |
| Prefix Length | 24 |

Addresses below `.100` are reserved for servers and network devices.

**Screenshot**

- IPv4 Scope configuration

---

# Step 4 - Configure DHCP Options

The following DHCP options were configured.

## Default Gateway

```
192.168.10.1
```

## DNS Server

```
192.168.10.10
```

## Parent Domain

```
techsolutions.local
```

These options ensure that every DHCP client can locate the Active Directory services through DNS.

**Screenshot**

- DHCP Options configuration

---

# Step 5 - Activate the Scope

After configuration, the IPv4 scope was activated.

Successful activation allows the DHCP server to begin assigning IP addresses to clients.

**Screenshot**

- Active IPv4 Scope

---

# Step 6 - Configure the Windows 11 Client

The Windows 11 network adapter was configured to obtain network settings automatically.

IPv4 settings:

- Obtain an IP address automatically
- Obtain DNS server address automatically

The client then renewed its lease.

Commands used:

```powershell
ipconfig /release
```

```powershell
ipconfig /renew
```

---

# Step 7 - Verify DHCP Configuration

The assigned configuration was verified using:

```powershell
ipconfig /all
```

Expected information:

| Item | Expected Value |
|------|----------------|
| DHCP Enabled | Yes |
| DHCP Server | 192.168.10.10 |
| DNS Server | 192.168.10.10 |
| DNS Suffix | techsolutions.local |
| IPv4 Address | 192.168.10.100 - 192.168.10.200 |

**Screenshot**

- ipconfig /all

---

# Step 8 - Verify Address Lease

The DHCP console was used to verify that the client received a lease.

Navigation:

```text
DC01
└── IPv4
      └── Address Leases
```

The Windows 11 client (WIN11-01) appeared in the lease list with an automatically assigned IP address.

**Screenshot**

- Address Leases

---

# Validation

The following tests were completed successfully:

| Validation | Status |
|------------|--------|
| DHCP role installed | ✅ |
| DHCP server authorized | ✅ |
| IPv4 scope created | ✅ |
| DHCP options configured | ✅ |
| Scope activated | ✅ |
| Client received an IP address | ✅ |
| DNS configuration received automatically | ✅ |
| Client connected to the Active Directory domain | ✅ |

---

# Skills Demonstrated

This laboratory demonstrates practical experience with:

- Windows Server 2025 Administration
- DHCP Server Installation
- DHCP Authorization in Active Directory
- IPv4 Scope Configuration
- DHCP Options Configuration
- Enterprise Network Services
- Windows 11 Client Management
- Active Directory Infrastructure
- VMware Workstation Pro

---

# Conclusion

The DHCP Server service was successfully deployed and integrated into the existing Active Directory infrastructure.

Windows 11 clients can now automatically obtain their IP configuration, DNS settings, and network information without manual intervention.

This configuration improves scalability, simplifies client deployment, and reflects a standard enterprise network implementation.
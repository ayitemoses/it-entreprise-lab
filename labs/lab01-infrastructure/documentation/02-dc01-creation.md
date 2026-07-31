# DC01 Virtual Machine Creation

## Objective

Create the first virtual machine of the Enterprise IT Lab environment.

DC01 will later become the main Windows Server infrastructure server.

---

## Virtual Machine Information

Name:

DC01

Operating System:

Windows Server 2025 Evaluation

---

## Hardware Configuration

| Resource | Configuration |
|---|---|
| CPU | 2 cores |
| RAM | 4 GB |
| Storage | 80 GB |
| Network | VMnet2 |

---

## Network Design

DC01 is connected to the isolated laboratory network:
Network: VMnet2
Subnet: 192.168.10.0/24

---

## Future Roles

The following roles will be configured in future labs:

- Active Directory Domain Services
- DNS Server
- DHCP Server
- Group Policy Management

---

## Status

Virtual machine created successfully.

Windows Server installation will be completed in the next laboratory.
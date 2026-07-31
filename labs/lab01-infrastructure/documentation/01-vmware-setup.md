# VMware Workstation Setup

## Objective

Prepare the virtualization environment required for the Enterprise IT Lab.

## Software

- VMware Workstation Pro

## Completed Tasks

- Installed VMware Workstation Pro
- Verified VMware installation
- Created the laboratory virtual network

## Virtual Network Configuration

Network: VMnet2

Type:
Host-only

Subnet:
192.168.10.0/24

DHCP:
Disabled

## Purpose

VMnet2 represents the internal corporate network of TechSolutions Québec Inc.

All virtual machines created in this laboratory will communicate through this isolated network.

## Screenshots

- vmware-version.png
- vmnet2-configuration.png
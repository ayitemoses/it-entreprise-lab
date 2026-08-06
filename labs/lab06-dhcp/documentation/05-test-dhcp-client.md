# Test DHCP Client

## Objective

Verify that a client computer receives its network configuration from the DHCP Server.

## Steps

1. Open Command Prompt as Administrator.
2. Run:

   ipconfig /release

3. Run:

   ipconfig /renew

4. Run:

   ipconfig /all

5. Verify:
   - IP address
   - Subnet mask
   - Default gateway
   - DHCP server
   - DNS server
   - DNS suffix

6. Verify the active lease in the DHCP console.

## Result

The client successfully receives its network configuration from the DHCP Server, and the active lease appears in the DHCP console.
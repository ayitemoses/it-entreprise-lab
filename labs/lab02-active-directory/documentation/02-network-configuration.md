# DC01 Network Configuration

## Objective

Configure a static IPv4 address for the future domain controller.

## Configuration

| Setting | Value |
|----------|-------|
| Computer Name | DC01 |
| IP Address | 192.168.10.10 |
| Subnet Mask | 255.255.255.0 |
| Default Gateway | None |
| Preferred DNS | 192.168.10.10 |

## Validation

The network configuration was verified using:

```powershell
ipconfig /all
```
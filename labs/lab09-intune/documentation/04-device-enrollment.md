# Join Windows Device to Microsoft Entra ID

## Objective

Join a Windows device to Microsoft Entra ID and verify that the device is registered in the organization.

## Steps

1. Sign in to the Windows device.
2. Open **Settings**.
3. Navigate to **Accounts → Access work or school**.
4. Select **Connect**.
5. Select **Join this device to Microsoft Entra ID**.
6. Enter the organizational Microsoft 365 account.
7. Verify the Microsoft Entra tenant information.
8. Complete the join process.
9. Sign out or restart the Windows device if required.
10. Sign in using the organizational account.

## Evidence

### Windows Work or School Settings

![Windows Work or School Settings](../screenshots/04-device-enrollment/01-windows-work-school-settings.png)

### Microsoft Entra Join

![Microsoft Entra Join](../screenshots/04-device-enrollment/02-entra-join-confirmation.png)

### Joined Device

![Microsoft Entra Joined Device](../screenshots/04-device-enrollment/03-entra-joined-device.png)

### Microsoft Entra Device

![Microsoft Entra Device](../screenshots/04-device-enrollment/04-entra-device.png)

## Verification

* Successfully joined the Windows device to Microsoft Entra ID.
* Verified the organizational account connection in Windows.
* Verified the device in Microsoft Entra ID.
* Confirmed that the device is associated with the Microsoft Entra tenant.

## Result

The Windows device was successfully joined to Microsoft Entra ID and is now registered as an organizational device.

# Microsoft Entra Administrator Roles

## Objective

Review Microsoft Entra ID administrative roles and understand how Role-Based Access Control (RBAC) enables delegated administration while following the principle of least privilege.

## Steps

1. Sign in to the Microsoft Entra admin center.
2. Navigate to **Identity > Roles & admins**.
3. Review the available administrative roles.
4. Verify that the administrator account is assigned the **Global Administrator** role.
5. Assign the **User Administrator** role to the test user **Jane Doe**.
6. Sign in with the Jane Doe account and verify the delegated permissions.
7. Review the Microsoft Entra audit logs to confirm the role assignment activity.

## Practical Exercise

### Role Assigned

* User: Jane Doe
* Role: User Administrator

### Validation

The delegated administrator account was able to:

* View Microsoft Entra users.
* Manage standard user accounts.
* Reset passwords for eligible users.

The delegated administrator account could not:

* Modify Global Administrator role assignments.
* Access tenant-wide administrative settings.
* Perform tasks requiring Global Administrator privileges.

## Verification

* Global Administrator role confirmed.
* User Administrator role successfully assigned.
* Delegated permissions validated.
* Role assignment recorded in Microsoft Entra Audit Logs.

## Result

Microsoft Entra ID Role-Based Access Control (RBAC) was successfully validated by assigning a limited administrative role to a test user. The exercise demonstrated how administrative responsibilities can be delegated securely without granting full administrative access.

# Verify Group Policy Application

## Objective

Verify that the **IT Desktop Policy** Group Policy Object is correctly applied.

## Steps

1. Open Command Prompt as Administrator.
2. Run:

   gpupdate /force

3. Run:

   gpresult /r

4. Confirm that **IT Desktop Policy** appears in the list of applied Group Policy Objects.
5. Test that Control Panel and Windows Settings are blocked for users in the IT Organizational Unit.

## Result

The Group Policy Object is successfully applied, and users in the IT Organizational Unit cannot access the Control Panel or Windows Settings.
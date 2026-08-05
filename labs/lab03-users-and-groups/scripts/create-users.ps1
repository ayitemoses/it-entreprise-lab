# ============================================
# Create-Users.ps1
# Enterprise IT Lab - TechSolutions
# ============================================

Import-Module ActiveDirectory

$Password = ConvertTo-SecureString "TechLab2026!" -AsPlainText -Force

New-ADUser `
    -Name "Test User" `
    -GivenName "Test" `
    -Surname "User" `
    -SamAccountName "test.user" `
    -UserPrincipalName "test.user@techsolutions.local" `
    -Path "OU=IT,DC=techsolutions,DC=local" `
    -AccountPassword $Password `
    -Enabled $true `
    -ChangePasswordAtLogon $true

Write-Host "User created successfully!"
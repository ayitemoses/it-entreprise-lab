Import-Module ActiveDirectory

$Password = ConvertTo-SecureString "TechLab2026!" -AsPlainText -Force

$Users = @(
    @{
        FirstName = "Alice"
        LastName = "Durand"
        OU = "IT"
        Group = "GG-IT-Admins"
    },
    @{
        FirstName = "Pierre"
        LastName = "Bernard"
        OU = "HR"
        Group = "GG-HR-Users"
    },
    @{
        FirstName = "Julie"
        LastName = "Lefebvre"
        OU = "Finance"
        Group = "GG-Finance-Users"
    }
)

foreach ($User in $Users) {
    $Sam = ($User.FirstName + "." + $User.LastName).ToLower()
    try {
        New-ADUser `
            -Name "$($User.FirstName) $($User.LastName)" `
            -GivenName $User.FirstName `
            -Surname $User.LastName `
            -SamAccountName $Sam `
            -UserPrincipalName "$Sam@techsolutions.local" `
            -Path "OU=$($User.OU),DC=techsolutions,DC=local" `
            -AccountPassword $Password `
            -Enabled $true `
            -ChangePasswordAtLogon $true

        Add-ADGroupMember `
            -Identity $User.Group `
            -Members $Sam

        Write-Host "$Sam created successfully." -ForegroundColor Green
    }
    catch {
        Write-Host "Failed for $Sam : $($_.Exception.Message)" -ForegroundColor Red
    }
}
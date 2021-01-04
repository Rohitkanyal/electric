Import-Module BitsTransfer

$ErrorActionPreference = "Stop"
Start-BitsTransfer 'https://electric-package-manager.herokuapp.com/install/windows' "${Env:\TEMP}\ElectricSetup.exe" -Description 'Downloading Electric Alpha v1.0.0 Setup from https://electric-package-manager.herokuapp.com/install/windows' -DisplayName 'Downloading Electric' -TransferType Download

Write-Host 'Installing Electric' -ForegroundColor cyan
& "${Env:\TEMP}\ElectricSetup.exe" /VERYSILENT
if ([System.IO.File]::Exists('C:\Program Files (x86)\Electric\bin\electric.exe')) {
    Write-Host 'Successfully Installed Electric' -ForegroundColor green
    exit
} else {
    Write-Error 'Failed To Successfully Install Electric'
}
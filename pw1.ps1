Set-ExecutionPolicy Bypass -Scope Process -Force 
irm https://community.chocolatey.org/install.ps1 | iex

Start-Sleep 2
RefreshEnv
Start-Sleep 2

Set-Location 'C:\ProgramData\chocolatey\bin'
.\choco.exe feature enable -n allowGlobalConfirmation
.\choco.exe install VisualStudioCode -y
.\choco.exe install GoogleChrome -y
.\choco.exe install audacity -y
.\choco.exe install winscp -y
.\choco.exe install github-desktop -y
.\choco.exe install teamviewer.host	-y

Write-Host "Done."

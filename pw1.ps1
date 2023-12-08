Set-ExecutionPolicy Bypass -Scope Process -Force 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

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

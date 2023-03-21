
#Get partitie with disk type "System"
Get-Partition | Where-Object -FilterScript {$_.Type -Eq "System"} | Set-Partition -NewDriveLetter o

#Delete all files in folder Fonts.
Get-ChildItem -File O:\EFI\Microsoft\Boot\Fonts -Recurse | Remove-Item -Recurse

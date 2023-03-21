Clear-Host
##Set executionpolicy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine

#Get partitie op basis van system type en zet direct de driveletter
Get-Partition | Where-Object -FilterScript {$_.Type -Eq "System"} | Set-Partition -NewDriveLetter o

#verwijderen van alle bestanden in de map Fonts.
Get-ChildItem -File O:\EFI\Microsoft\Boot\Fonts -Recurse | Remove-Item -Recurse


##Get partition with disk type "System" and set driveletter
$Partition = Get-Partition | Where-Object -FilterScript {$_.Type -Eq "System"}
Set-Partition -DiskNumber $Partition.DiskNumber -PartitionNumber $partition.PartitionNumber -NewDriveLetter W 

#Delete all files in folder Fonts.
Get-ChildItem -File W:\EFI\Microsoft\Boot\Fonts -Recurse | Remove-Item -Recurse

#Remove path from system partition
Remove-PartitionAccessPath -DiskNumber $Partition.DiskNumber -PartitionNumber $partition.PartitionNumber -AccessPath W:



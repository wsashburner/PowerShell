###SCRIPT WILL REMOVE ITEMS FROM DOWNLOAD FOLDER---->ARCHIVE IN A ZIP FILE TO DOCUMENTS FOLDER----- DELETE FILES IN DOWNLOAD FOLDER------->EMPTY RECYCLE BIN###



Compress-Archive -Path $env:USERPROFILE\downloads\ -DestinationPath $env:USERPROFILE\documents\test.zip

Get-ChildItem $env:USERPROFILE\documents\test.zip | Rename-Item -newname {$_.CreationTime.toString("MM.dd.yyyy.HH.mm") + ".zip"}

Get-ChildItem C:\Users\*\downloads\ -Include *.* -Recurse | ForEach-object  { $_.Delete()}

Clear-RecycleBin -force

[System.Windows.MessageBox]::Show('DOWNLOAD FOLDER HAS BEEN ARCHIVED!')



test





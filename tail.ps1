Write-Host "edit this file and set the right path"

$logItem = Get-ChildItem -File C:\inetpub\wwwroot\XXXXXX\App_Data\logs\log* | Sort-Object LastWriteTime -Descending | Select-Object -First 1
 baretail $logItem.FullName

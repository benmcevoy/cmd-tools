$logName = "Application"
$logLevel = 1,2

if(-not($Args[0] -eq $null)){
	
Get-WinEvent -FilterHashtable @{ LogName=$logName ; ID= $Args[0]} -MaxEvents 1 | select -First 1 -Property *
}
else{
	$Yesterday = (Get-Date) - (New-TimeSpan -Day 1)
	Get-WinEvent -FilterHashtable @{ LogName=$logName ; Level=$logLevel ; StartTime=$Yesterday }
}

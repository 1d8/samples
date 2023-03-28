$ComputerName = $env:COMPUTERNAME
$OperatingSystem = (Get-CimInstance Win32_OperatingSystem).Caption
$Processor = (Get-CimInstance Win32_Processor).Name
$Memory = "{0:N2} GB" -f ((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB)
$Disk = (Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'").Size / 1GB
$Username = (Get-CimInstance Win32_ComputerSystem).UserName

$Output = @"
Computer Name: $ComputerName
Operating System: $OperatingSystem
Processor: $Processor
Memory: $Memory
Disk Space: $Disk GB
Username: $Username
"@

$Output | Out-File -FilePath "$env:TEMP\computer_info.txt"

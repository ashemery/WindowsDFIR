# PowerShell4DFIR
Repository for PowerShell Cmdlets used for Digital Forensics and Incident Response

## Timestamps in UTC (PATH)
Get-ChildItem \<PATH\> -Force | Select-Object FullName, CreationTimeUTC, LastAccessTimeUTC, LastWriteTimeUTC
  
## Timestamps in local time
Get-ChildItem PATH> -Force | Select-Object FullName, CreationTime, LastAccessTime, LastWriteTime

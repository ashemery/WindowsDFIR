# PowerShell4DFIR
Repository for PowerShell Cmdlets used for Digital Forensics and Incident Response

## Timestamps in UTC
Get-ChildItem \<PATH\> -Force | Select-Object FullName, CreationTimeUTC, LastAccessTimeUTC, LastWriteTimeUTC
  
## Timestamps in local time
Get-ChildItem \<PATH\> -Force | Select-Object FullName, CreationTime, LastAccessTime, LastWriteTime

## Hash Values (MD5, SHA1, and SHA256)
Get-FileHash \<PATH\> -Algorithm MD5 | Format-List
Get-FileHash \<PATH\> -Algorithm SHA1 | Format-List
Get-FileHash \<PATH\> -Algorithm SHA256 | Format-List

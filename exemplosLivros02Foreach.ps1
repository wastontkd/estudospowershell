$a = dir | sort -Property Length -Descending | Select-Object -First 1 | ForEach-Object { $_.DirectoryName}
dir | sort -desc Length | select -First 3

#localizar processos
Get-Process | sort -desc ws | select -First 3

#Objetos WMI
Get-WmiObject win32_logicaldisk | sort -desc freespace | Select -First 3 | Format-Table -AutoSize deviceid, freespace

#loops
$i = 0
while ($i++ -lt 10){ if ($i %2) {"$i is odd"}}
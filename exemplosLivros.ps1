$Total = 0 
dir | ForEach-Object {$Total += $_.Length}
$Total
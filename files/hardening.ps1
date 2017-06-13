$securityTemplate = "C:\Windows\Temp\HardeningHigh.inf"
$registryFile = "C:\Windows\Temp\HardeningHigh.reg"
$databaseFile = "C:\Windows\security\database\hardeningdb.sdb"

"y" | secedit /configure /cfg $securityTemplate /overwrite /db $databaseFile /verbose

regedit /s $registryFile

exit 0

$childItems = Get-ChildItem -Recurse -File -Path .
$count = ($childItems | Measure-Object).count
$index = 0
foreach($file in $childItems) {
    $index++
    if ($file.name -match "VRChat_[0-9]+x[0-9]+_[0-9]{4}-[0-9]{2}-[0-9]{2}_[0-9]{2}-[0-9]{2}-[0-9]{2}\.[0-9]{3}\.png") {
        $split = $file.name.split("_.")
        $newName = $split[0] + "_" + $split[2] + "_" + $split[3] + "." + $split[4] + "_" + $split[1] + "." + $split[5]
        $progress = "{0:P}" -f ($index/$count)
        Rename-Item -Path $file.fullName -NewName $newName
        Write-Host "`r$newName - $progress ($index/$count)" -NoNewline
    }
}
Write-Host # Newline

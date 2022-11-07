echo "This is a passcode randomizer."
sleep 2
echo "You must insert the minimum and maximum range"
sleep 2
$min = Read-Host "What is the min value?"
$max = Read-Host "What is the max value?"

$randNum = Get-Random -Minimum $min -Maximum $max

Write-Output "$randNum"
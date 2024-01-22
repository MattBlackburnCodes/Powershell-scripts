$updateComputers = @()
$cantUpdate = @()
$updated = @()

while($true){
    $compInfo = Read-Host "Enter the computer name (Enter q to exit prompt)"
    if ($compInfo -eq "q"){
        break
    }
    $updateComputers += $compInfo


}

foreach ($computer in $updateComputers){
    if (Test-Connection -ComputerName $computer -Count 1 -Quiet){
        Write-Host "Updating $computer..."
        Invoke-Command $computer{
        sfc /scannow
        DISM /Online /Cleanup-Image /RestoreHealth
        Write-Host "Update Completed!"
    }
    }
    else{
        Write-Host "$computer can't be reached at this time."
        $cantUpdate += $computer
    }
} 
Write-Host "$cantUpdate couldn't be updated at this time. Please try again later"

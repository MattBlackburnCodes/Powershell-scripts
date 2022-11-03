# Script created by Matt Blackburn. If you have any questions of recommendations on how to make the script better send me an email at solitaireblack21@gmail.com



# Ask for the workstation ID
$target = Read-Host "What is the name of the target workstation ID"

# Start Powershell script session. Pass workstation variable to start session.


# Get serial number
$serial = Get-CimInstance -Computer $target win32_bios  | select SerialNumber

# Get how long the workstation has been up since the last reboot
$os = gwmi win32_operatingsystem -ComputerName $target
$uptime = $os.converttodatetime($os.lastbootuptime)


#Get the username of the currently logged on to the workstation
$username = Get-CimInstance –ComputerName $target –Class Win32_ComputerSystem | Select-Object UserName

Write-Host $username
Write-Host $serial
Write-Host "@{Last Reboot=$uptime}"
# Write-Output $e

# Ask if the user wants the list of software and system updates
$confirm = Read-Host "Do you want the the list of software and system updates? (y/n)"

if ($confirm -eq "y"){
    $software = Get-CimInstance -ComputerName $target -Class Win32_Product | select Name, Version
    $system = Get-Hotfix -ComputerName $target
    Write-Output $software
    Write-Output $system

}
elseif($confirm -eq "n"){
    Write-Host "Script has ended"

}

else{
    Write-Host "Suppose to loop back to "
}








# Script created by Matt Blackburn. If you have any questions of recommendations on how to make the script better send me an email at solitaireblack21@gmail.com
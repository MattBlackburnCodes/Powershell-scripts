Write-Host "Script in process."
ipconfig /flushdns
nbtstat -R
nbtstat -RR
netsh int reset all
netsh int ip reset
netsh winsock reset
Write-Host "Script completed."
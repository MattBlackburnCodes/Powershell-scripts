# Create a variable that for c:\Temp
$tempFolder = 'C:\Temp'
#If c:\temp isn't created, make folder.
if (Test-Path -Path $tempFolder){
    Write-OutPut "Temp folder exists"

}

#If the c:\ temp folder print "folder exists".
else{
    New-Item -Path $tempFolder -ItemType Directory
    Write-Output "Temp folder created"
}

# Gets the date and time of when the script was executed and prints to NetDiag.txt file.
Get-Date >> C:\Temp\NetDiag.txt

# ipconfig gets the current ip address and makes a file called  netdiag.txt
ipconfig >> C:\Temp\NetDiag.txt

# Does a traceroute to google's dns server and appends to netdiag.txt file
tracert 8.8.8.8 >> C:\Temp\NetDiag.txt

# Does a traceroute to an internal resource (can't remember what exactly), and appeds to netdiag.txt file.
tracert 10.142.3.50 >> C:\Temp\NetDiag.txt

# Displays active TCP connections and ports on which the computer is listening. 
#netstat -n (Displays active TCP connections, however, addresses and port numbers are expressed numerically and no attempt is made to determine names.)
#netstat -o (Displays active TCP connections and includes the process ID (PID) for each connection. You can find the application based on the PID on the Processes tab in Windows Task Manager. )
netstat -n -o >> C:\Temp\Netstat.csv

# Gets the processes that are running on the local computer. 
Get-Process >> C:\Temp\PIDinfo.csv

Write-Output "Script completed"
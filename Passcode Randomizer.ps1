# Script created by Matt Blackburn. If you have any questions of recommendations on how to make the script better send me an email at solitaireblack21@gmail.com
# Script to pick out a number randomly from the min and max value the user inputs
 
echo "This is a passcode randomizer."
echo "You must insert the minimum and maximum range"
# Get min value
$min = Read-Host "What is the min value?"

# Get max value
$max = Read-Host "What is the max value?"

# Pick a random number from the two previous values
$randNum = Get-Random -Minimum $min -Maximum $max

# Write to screen
Write-Output "$randNum"
Read-Host "Press enter to close window"

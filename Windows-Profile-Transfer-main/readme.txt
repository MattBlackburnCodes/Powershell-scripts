User Profile Transfer Script

Introduction

This PowerShell script is designed to transfer specific user profile folders and settings from one computer to another. It can be useful when you need to migrate user data and settings between computers. This script uses the Robocopy tool to perform the actual file transfer.

Usage

Prerequisites

- This script needs to be run with administrative privileges on both the source and destination computers.
- Make sure that both the source and destination computers are online and accessible from the computer where you run the script.

Instructions
1. Run the script with administrative privileges.

2. The script will prompt you for the following information:

- Source Computer: Enter the name of the computer you want to copy the user profile data from. The script will verify if the computer is online.

- Destination Computer: Enter the name of the computer you want to copy the user profile data to. The script will also verify if this computer is online.

- Username: Enter the user profile name that you want to transfer.

3. The script will validate the entered information to ensure the source computer, destination computer, and user profile exist.

4. Once the information is confirmed, the script will begin copying the specified user profile folders and settings from the source to the destination computer.

Folders to Copy

The following folders are included in the transfer:

- Desktop
- Videos
- Favorites
- Microsoft Edge Favorites
- Outlook Signatures
- Adding Taskbar Icons
- Google Chrome Favorites

You can customize the list of folders to copy by editing the $FoldersToCopy array in the script.

Important Notes

- Ensure that both the source and destination computers already have a copy of the user's profile on them by having them sign into their new/replacement laptop, to avoid errors during the transfer.
- This script relies on the Robocopy tool for the actual file transfer, and it uses specific parameters for the copy operation.
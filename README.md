# oculus-toggle-mic-touch-controller
This is an old AutoHotKey script I made in 2018/2019 for the Virtual Reality Discord. Made for Rift CV1.

It allows you to toggle the mic button by touching the 'Y' button on your Touch controller.

## How to Set Up
- Install AHK (AutoHotKey) <- You're probably already here!
- In your Speaker settings, change your Rift Audio's volume to a particular value (e.g. 78)
- Run 'soundcard analysis.ahk'
- When the list shows up, find the Audio output with the same volume you set before
- Remember the mixer's number of that output
- Right-click 'oculus-toggle-mic.ahk' and click on Edit Script
- Replace REPLACE_ME with the mixer's number from before
- Save
- Right-click 'oculus-toggle-mic.ahk' and click on Compile Script
- You can now put your Rift Audio's volume back to full again

## How To Run
Simply run the compiled file (.exe) everytime you need it.

## Usage
Simply rest your thumb on the right thumb rest sensor then release it to toggle the mic on and off.

## How To Close
Tray > 'H' icon > Exit/Pause Script

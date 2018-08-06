# IIT Guwahari proxy switcher
A super simple, super stupid Powershell script

## Introduction
This script was built out of pure frustation with two things:
1. Developing on Windows
2. My college's networking system

Indian Institute of Technology, Guwahati uses a proxy server to access the internet.

Many apps are not configured to connect to the internet through a proxy server.

And Windows does not allow for system wide proxy settings.

## Working
So all that this script does is:
1. Run in the background continuously 
2. Extract the network SSID
3. Check if it matches with a network which requires proxy to be set, i.e., any IITG network
4. If yes, turn on the proxy and set the appropriate server and port
5. If no, turn off the proxy

## How to run
1. Open Powershell on your Windows PC
2. Navigate to the folder where the script is stored
3. Execute it by typing its name
4. `Ctrl+C` to close it

## Tweaking the script
You can add your own SSIDs to the script by adding the network names in double-quotes ("") separated by commas (,) to the `SSIDs` array in the script


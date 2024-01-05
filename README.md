# win_caffeinate
This repo contains all the necessary info to setting up a custom PowerShell profile on Windows Terminal to "caffeinte" the same as a macOS system can. Credit for the ps1 file goes to [Den Delimarsky](https://den.dev/blog/caffeinate-windows/), the profile code is my own.

## Setup
Windows caffeinate Terminal profile:
1. Create a `caffeinate.ps1` file under `C:/Users/<user_folder>/` and paste the code from the repo file there (this prevents issues with unsigned file)
1. On Terminal, open Settings, click `Add new profile` on the left
2. Select the existing `Windows PowerShell` profile, and click `Duplicate`
1. On the next screen, input the code below into the `Command line` field
1. Make sure Starting directory is `%USERPROFILE%`
1. Customise Name, Icon, Tab title, and Appearance according to taste
    - (Optional) Save one of the icons (white or black version, to match your theme) to the User folder, and select it through the Icon field when creating the profile



## Appendix
Code to input on Terminal Profile `Command Line` field:
```
%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe powershell -NoExit -Command {. .\caffeinate.ps1; Drink-Espresso}
```

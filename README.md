# win_caffeinate

### Setup
Windows caffeinate Terminal profile:
1. File goes into `C:/Users/<user_folder>/`
1. On Terminal, open Setttings, click `Add new profile` on the left
1. On the `Command line` field, input the code below
1. Make sure `Starting directory` is `%USERPROFILE%`
1. Customise `Name`, `Tab title`, `Icon`, and `Appearance` according to taste


### Appendix
Code to input on Terminal Profile `Command Line` field:
```
%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe powershell -NoExit -Command {. .\caffeinate.ps1; Drink-Espresso}
```

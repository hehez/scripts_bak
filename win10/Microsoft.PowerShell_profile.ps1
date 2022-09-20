## 
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Honukai


## Hide your username@domain
$DefaultUser = '<username>'

## Configuration
## Setup date and timestamp
## $GitPromptSettings.DefaultPromptPrefix = '$(Get-Date -f "yyyy-MM-dd HH:mm:ss") '



## Setup Git alias
## git config --global alias.co checkout
##
##

## Setup cmd alias
## ll 	-> Get-ChildItem
## lla 	-> ls -Force
if (!(Test-Path alias:ll)) { New-Alias -Name "ll" -Value Get-ChildItem -Description "A shortcut to the Get-ChildItem cmdlet" }
function ListFilesWithHidden { Get-ChildItem . -Force }
if (!(Test-Path alias:lla)) { New-Alias -Name "lla" -Value ListFilesWithHidden -Description "A shortcut to the Get-ChildItem cmdlet with hidden files" }

## dw -> Get-ChildItem
function CDDWorkspace { set-location D:\workspace }
if (!(Test-Path alias:dw)) { New-Alias -Name "dw" -Value CDDWorkspace -Description "A shortcut to go to workspace in D disk" }

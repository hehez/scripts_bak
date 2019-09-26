[_metadata_:author]:    - ""
[_metadata_:date]:      - "09/25/2019"

# Windows 10 Dev Setup
[![GitHub license](https://img.shields.io/github/license/hehez/scripts_bak.svg?style=plastic&logo=appveyor)](https://github.com/hehez/scripts_bak/blob/master/LICENSE)

## Checking PowerShell version
> Source: [5.1 Profiles](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-5.1) 

You can check your PowerShell version by typing either of the following from within PowerShell
```powershell
$host.Version

$PSVersionTable.PSVersion
```

return version `5.1`
```powershell    
Major  Minor  Build  Revision
-----  -----  -----  --------
5      1      18362  145
```

## Installing [Chocolatey](https://chocolatey.org/)  
> Source: [Instructions](https://chocolatey.org/docs/installation#more-install-options)

### Install with cmd
```cmd
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

### Install with powershell
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

### Upgrading Chocolatey
```powershell
choco upgrade chocolatey
```

## Installing fluent-terminal
```powershell
choco install fluent-terminal
```

## Installing Git
### Install Git
```powershell
choco install git.install
```

### Checking Git version:
```powershell
git --version
```

return version `2.23.0`
```powershell
git version 2.23.0.windows.1
```

## Installing [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh)
> Source: [oh-my-posh 2.0.311](https://www.powershellgallery.com/packages/oh-my-posh/2.0.311)

### Prerequisites
Before installing posh-git make sure the following prerequisites have been met
- Windows PowerShell 5.x or PowerShell Core 6.0
- On Windows, script execution policy must be set to either `RemoteSigned` or `Unrestricted`. Check the script execution policy setting by executing 
    ```powershell
    Get-ExecutionPolicy
    ```

    If the policy is not set to one of the two required values, run PowerShell as Administrator and execute 
    ```powershell
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm
    ```   
- Git must be installed

### Install posh-git and oh-my-posh
```powershell
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
```

Enable the promot, i.e.
```powershell
Set-Theme Agnoster
Set-Theme paradox
```

### Configuration
List the current configuration
```powershell
$ThemeSettings
```

Check whether or not a profile already exists
```powershell
Test-Path $profile
```

If it returns false, create a new profile to enable the engine edit your PowerShell profile
```powershell
if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }
```

To open the profile of the current user in the current PowerShell host application in Notepad
```powershell
notepad $PROFILE
```

Append the following lines to your PowerShell profile
> Example: [Microsoft.PowerShell_profile.ps1](Microsoft.PowerShell_profile.ps1#L2-L8)
```
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
## Hide your username@domain
$DefaultUser = 'yourUsernameHere'
```

To see the current values of the `$PROFILE` variable, type
```powershell
$PROFILE | Get-Member -Type NoteProperty
```

### Themes
```
Agnoster
Paradox
Sorin
Darkblood
Avit
Honukai
Fish
Robbyrussell
```

## Installing [posh-git](https://github.com/dahlbyk/posh-git)
### Customizing the posh-git prompt
- [ ] TODO

## Setting alias of command lines
### Command lines
> Example: [Microsoft.PowerShell_profile.ps1](Microsoft.PowerShell_profile.ps1#L21-L30)
```powershell
Get-Alias
Get-Alias <name>
New-Alias -Name "ll" -Value Get-ChildItem -Description "A shortcut to the Get-ChildItem cmdlet"
```

## Permanently authenticating with Git repositories
### Generate an SSH key
```powershell
ssh-keygen
```

### Add SSH key with the remote repository
> Link: [github key settings](https://github.com/settings/keys)

### Set remote URL to a form that supports SSH
Check your repo URL
```powershell
git remote show origin
```

Change it to 
```powershell
git remote set-url origin git+ssh://git@github.com/<username>/<reopname>.git
```

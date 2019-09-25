[_metadata_:author]:    - ""
[_metadata_:date]:      - "09/25/2019"

# Windows 10 Dev Setup
## Checking PowerShell version
You can check your PowerShell version by typing the following from within PowerShell
```powershell
$host.Version
```
    
    Major  Minor  Build  Revision
    -----  -----  -----  --------
    5      1      18362  145

[5.1 Profiles](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-5.1)

## Installing [Chocolatey](https://chocolatey.org/)  
[Instructions](https://chocolatey.org/docs/installation#more-install-options)

### Install with cmd
```cmd
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

### Install with powershell
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

### Upgrading Chocolatey
```cmd
choco upgrade chocolatey
```

## Installing fluent-terminal
```cmd
choco install fluent-terminal
```

## Installing Git
### Install Git
```cmd
choco install git.install
```

### Checking Git version
```powershell
git --version
```

## Installing [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh)

[oh-my-posh 2.0.311](https://www.powershellgallery.com/packages/oh-my-posh/2.0.311)

### Prerequisites
### Install posh-git and oh-my-posh
```
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

    Import-Module posh-git
    Import-Module oh-my-posh
    Set-Theme Paradox
    ## Hide your username@domain
    $DefaultUser = 'yourUsernameHere'


To see the current values of the `$PROFILE` variable, type
```powershell
$PROFILE | Get-Member -Type NoteProperty
```

### Themes
    Agnoster
    Paradox
    Sorin
    Darkblood
    Avit
    Honukai
    Fish
    Robbyrussell

## Installing [posh-git](https://github.com/dahlbyk/posh-git)
### Customizing the posh-git prompt
Todo

## Setting alias of command lines
### Command lines
```powershell
Get-Alias
Get-Alias <name>
New-Alias -Name "ll" -Value Get-ChildItem -Description "A shortcut to the Get-ChildItem cmdlet"
```
[_metadata_:author]:    - ""
[_metadata_:date]:      - "10/02/2019"

# Windows 10 WSL2 Setup
Not until May 2020, before you can try [Windows Insider builds](https://insider.windows.com/en-us/)
> Source: [Announcing WSL 2](https://devblogs.microsoft.com/commandline/announcing-wsl-2/)\
> Source: [Shipping a Linux Kernel with Windows](https://devblogs.microsoft.com/commandline/shipping-a-linux-kernel-with-windows/)\
> Source: [WSL2 will be generally available in Windows 10, version 2004](https://devblogs.microsoft.com/commandline/wsl2-will-be-generally-available-in-windows-10-version-2004/)

Release now
> Source: [Installation Guide](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

## Enable the 'Virtual Machine Platform' optional component
Before installing WSL 2, you must enable the "Virtual Machine Platform" optional feature.

Open PowerShell as Administrator and run:
```PowerShell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
Restart your machine to complete the WSL install and update to WSL 2.

## Set WSL 2 as your default version
Run the following command in PowerShell to set WSL 2 as the default version when installing a new Linux distribution:
```PowerShell
wsl --set-version Ubuntu 2
wsl --set-default-version 2
```

Check WSL
```PowerShell
wsl --list --verbose
```
```
wsl -l -v
```

# Windows 10 WSL1 Move to other directory
> Source: [solution 1](https://superuser.com/questions/1113906/can-i-move-the-linux-subsystem-to-a-different-drive)\
> Source: [solution 2](https://stackoverflow.com/questions/38779801/move-wsl-bash-on-windows-root-filesystem-to-another-hard-drive)\
> Source: [auto move](https://github.com/pxlrbt/move-wsl)

Unregister WSL so we can register it again at new location
```PowerShell
wsl --unregister $WSL_NAME &>/dev/null
```

# Windows 10 WSL1 Setup
> Source: [Mircosoft](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

## Install the Windows Subsystem for Linux (aka WSL)
In the Windows search bar, type `features` to bring up the `Turn Windows Features on and off` dialog. Scroll down and check `Windows Subsystem for Linux`.

Open PowerShell as an Administrator and type
```PowerShell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

After restarting Windows, you can check that you have WSL enabled by opening a Command Prompt and typing `wsl`
```PowerShell
wsl
```

## Install your Linux Distribution of Choice
- Download and install from the Microsoft Store ([see below](#ifms))
- Download and install from the Command-Line/Script ([read the manual installation instructions](https://docs.microsoft.com/en-us/windows/wsl/install-manual))
- Download and manually unpack and install (for Windows Server - [instructions here](https://docs.microsoft.com/en-us/windows/wsl/install-on-server))

### <a name="ifms"></a>Install from the Mircosoft Store
> Source: [build 16215 or later](https://docs.microsoft.com/en-us/windows/wsl/troubleshooting#check-your-build-number)

Open the Microsoft Store and choose your favorite Linux distribution. At the moment I choose `Ubuntu 18.04 LTS`.

    Ubuntu 16.04 LTS
    Ubuntu 18.04 LTS
    OpenSUSE Leap 15
    OpenSUSE Leap 42
    SUSE Linux Enterprise Server 12
    SUSE Linux Enterprise Server 15
    Kali Linux
    Debian GNU/Linux
    Fedora Remix for WSL
    Pengwin
    Pengwin Enterprise
    Alpine WSL

## FAQ
### CAN NOT open the given directory in the vs code insiders explorer when logged in as a non-root user(w/ sudo privileges) 
> Source [multi user support](https://github.com/microsoft/vscode-remote-release/issues/286) \
> Source [WSL2 starting as root when starting with wsl.exe](https://github.com/microsoft/WSL/issues/4276#issuecomment-509364493)
```
To resolve your immediate issue please see issue #3974 .
Specifically go to:

Find your UID for your username in your Linux distro typing in the command id -u <yourUserName>. Remember this value.
Open registry edit and navigate to HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lxss\{MY-UUID}. Please be careful when editing registry keys!
Replace the DefaultUid value with the UID value of the user in your distro.
```

## WSL Command Reference
> Source: [Command Reference for Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/reference)
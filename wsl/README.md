[_metadata_:author]:    - ""
[_metadata_:date]:      - "10/02/2019"

# Windows 10 WSL2 Setup
Not until May 2020, before you can try [Windows Insider builds](https://insider.windows.com/en-us/)
> Source: [Announcing WSL 2](https://devblogs.microsoft.com/commandline/announcing-wsl-2/)\
> Source: [Shipping a Linux Kernel with Windows](https://devblogs.microsoft.com/commandline/shipping-a-linux-kernel-with-windows/)\
> Source: [WSL2 will be generally available in Windows 10, version 2004](https://devblogs.microsoft.com/commandline/wsl2-will-be-generally-available-in-windows-10-version-2004/)


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

## WSL Command Reference
> Source: [Command Reference for Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/reference)
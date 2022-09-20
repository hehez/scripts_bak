[_metadata_:author]:    - ""
[_metadata_:date]:      - "10/08/2019"

# Ubuntu Dev Setup
## Ubuntu 18.04.3 LTS (Bionic Beaver)
> Source: [web](http://releases.ubuntu.com/18.04/)

## Before updating
```bash
sudo apt update
sudo apt -y upgrade
```

## Installing git
###
```bash
sudo apt-get install git
```

## Installing Python 3
### Check version of Python 3
```bash
python3 -V
```

### Install pip
```bash
sudo apt install -y python3-pip
```

Python packages can be installed by typing:
```bash
pip3 install <package_name>
```

### Install additional tools
There are a few more packages and development tools to install to ensure that we have a robust set-up for our programming environment
```bash
sudo apt install build-essential libssl-dev libffi-dev python3-dev
```

### Install venv
Virtual environments enable you to have an isolated space on your server for Python projects
```bash
sudo apt install -y python3-venv
```

### Create a virtual environment
```bash
python3.6 -m venv my_env
```

### Activate virtual environment
```bash
source my_env/bin/activate
```

### Deactivate virtual environment
```bash
deactivate
```

## Installing Docker
### Check Docker version
```bash
docker --version
```

### Uninstall old version
```bash
sudo apt-get remove docker docker-engine docker.io
```

### Install Docker
```bash
sudo apt install docker.io
```

### Install Docker compose
```bash
sudo apt install docker-compose
```

### Add current user to docker group
Got permission denied while trying to connect to the Docker daemon socket at unix If you run `docker ps`, add current to docker group

#### Create the `docker` group
```bash
sudo groupadd docker
```
#### Add your user to the `docker` group
```bash
sudo usermod -aG docker $USER
```

### Start and automate Docker
```bash
sudo systemctl start docker
sudo systemctl enable docker
```

## Installing vscode
Go to website and download it, run it via terminal
```bash
code <file_name>
```

## Installing NodeJs
### Check version
```bash
node --version
```

### Install NodeJs `v8.10.0` 
```bash
sudo apt install nodejs
```

### Install NodeJs `v10.16.3`
```bash
sudo apt update
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash

sudo apt -y install nodejs
```

### Check npm version
version `6.9.0` comes with NodeJs 10
```bash
npm -v
```

## SSH into Ubuntu (if it's vm guest OS)
If vm is Ubuntu and hosted in Virtual box, you can ssh into guest (Ubuntu) from host.
### Install SSH
Go to vm guest OS,
```bash
sudo apt-get install openssh-server
```

### Disable firewall
```bash
sudo ufw disable
```

### Vm settings
Go to Settings -> Network -> Advanced -> Port Forwarding, create a new rule with args, any host port ie. `2322`
```bash
Protocol: TCP
Host Port: 2322
Guest Port: 22
```

And run the command line in Host OS and enter password
```bash
ssh <username>@localhost -p 2322
```

### SSH VM OS using vscode
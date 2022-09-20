[_metadata_:author]:    - ""
[_metadata_:date]:      - "01/30/2020"

# CentOS Server Dev Setup
## CentOS 7

## Installing Git
```bash
sudo yum install git
```

## Installing Docker
> Source: [web](https://phoenixnap.com/kb/how-to-install-docker-centos-7)

> Source: [web](https://github.com/NaturalHistoryMuseum/scratchpads2/wiki/Install-Docker-and-Docker-Compose-(Centos-7))
### Update Docker Package Database
```bash
sudo yum check-update
```

### Install the Dependencies
```bash
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
```

### Configure the codker-ce repo
```bash
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```

### Install Docker
```bash
sudo yum install docker-c
or
sudo yum install docker
```

### Add your user to the docker group with the following command
```bash
sudo usermod -aG docker $(whoami)
```

### Set Docker to start automatically at boot time:
```bash
sudo systemctl enable docker.service
```

### Start the Docker service
```bash
sudo systemctl start docker.service
```

## Installing Docker Compose
### Download stable release of Docker Compose
> Source: [docker webite](https://docs.docker.com/compose/install/)
```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

### Apply executable permissions to the binary
```bash
sudo chmod +x /usr/local/bin/docker-compose
```
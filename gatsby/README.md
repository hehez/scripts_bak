[_metadata_:author]:    - ""
[_metadata_:date]:      - "10/10/2020"

# Gatsby Setup on WSL
> Source: [Gatsby on Linux](https://www.gatsbyjs.com/docs/gatsby-on-linux/)

## Install node, nvm and npm
### Begin by updating and upgrading.
```Shell
sudo apt update
sudo apt -y upgrade
```

### Install cURL which allows you to transfer data and download additional dependencies.
```Shell
sudo apt install curl
```

### Once curl is installed, you can use it to install nvm, which will manage node and all its associated versions.
```Shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
```

### Use the latest release of version 10
```Shell
nvm install 10
nvm use 10
```

## Using the Gatsby CLI
```Shell
npm install -g gatsby-cli
```

## Create a Gatsby site
```Shell
gatsby new hello-world https://github.com/gatsbyjs/gatsby-starter-hello-world
```

# TypeScript and Gatsby

# FAQ
### If nvm is previously installed by root user, will get error
```Shell
You have $NVM_DIR set to "/root/.nvm", but that directory does not exist. Check your profile files and environment.
```

To remove, delete, or uninstall nvm, just remove the `$NVM_DIR` folder (usually `~/.nvm`), and unset the environment by current user, and restart the terminal
```Shell
env             -- check ALL current enviroment variables
env | grep NVM  -- check enviroment variables with nvm
unset NNM_DIR   -- unset env variable NNM_DIR
unset NVM_BIN   -- unset env variable NVM_BIN
```
Then repeat the installation steps
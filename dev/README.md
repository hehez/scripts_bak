[_metadata_:author]: -
[_metadata_:date]: - "08/16/2023"

# MacOS Dev Setup

## Table of Contents

- [Node](#Install-node)
  1. [Install Node Version Manager(nvm)](#1-install-node-version-managernvm)
  2. [Install Node](#2-install-node)

## Install node

### 1. Install Node Version Manager(nvm)

> Source: [nvm][1]

1. To **install** or **update** nvm, you should run the [install script][2]. To do that, you may either download and run the script manually, or use the following cURL or Wget command:

   ```sh
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
   ```

   ```sh
   wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
   ```

2. Reload the shell configuration

   ```sh
   source ~/.zshrc
   ```

3. (Optional) Verify the installation

   ```sh
   command -v nvm
   ```

4. (Optional) Check nvm version
   ```sh
   nvm -v
   ```

<!-- This is commented out. -->
<!-- Reference Links -->

[1]: https://github.com/nvm-sh/nvm
[2]: https://github.com/nvm-sh/nvm/blob/v0.39.4/install.sh

### 2. Install Node

1. Install the latest release / specific version

   ```sh
   nvm install node
   nvm install v18.17.1
   ```

2. Use the specific version that installed

   ```sh
   nvm use v18.17.1
   ```

3. Change the default Node.js version

   ```sh
   nvm alias default 18.17.1
   ```

4. (Optional) Migrate packages from a previous Node.js version

   ```sh
   nvm install v18.17.1 --reinstall-packages-from=v10.20.1
   ```

5. (Optional) Delete an older version

   ```sh
   nvm uninstall v10.20.1
   ```

6. (Optional) Check the latest LTS node version, as of 09/03/2023, it's `v18.17.1` (Latest LTS: Hydrogen)

   ```sh
   nvm ls-remote lts
   ```

7. (Optional) Install and use the LTS version

   ```sh
   nvm install --lts
   nvm use --lts
   ```

8. List all installed Node.js versions available locally on your machine
   ```sh
   nvm list
   ```

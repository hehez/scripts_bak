[_metadata_:author]: -
[_metadata_:date]: - "10/14/2019"
[_metadata_:update]: - "08/16/2023"

# Git Dev Setup

## Table of Contents

- [Git Alias](#git-alias)
- [Advanced Git Alias](#advanced-git-alias)
- [Git Config](#git-config)

## Git alias

```bash
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
```

## Advanced Git alias

```bash
git config --global alias.pushup '!sh -c "git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)"'
git config --global alias.oops 'reset --soft HEAD^'
git config --global alias.commend 'commit --amend --no-edit'
git config --global alias.cp cherry-pick
```

## Git config

### Basic

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

Verify the changes

```bash
git config --list
```

and output

```bash
user.name=Your Name
user.email=youremail@yourdomain.com
```

## Adding a new SSH key to your GitHub account

You can access and write data in repositories on GitHub.com using SSH (Secure Shell Protocol). When you connect via SSH, you authenticate using a private key file on your local machine without supplying your username and personal access token at each visit.

> Source: [Adding a new SSH key to your GitHub account][4]

<!-- ### 1. Change the protocol of a remote repository from https to ssh -->

1. Checking for existing SSH keys, if not exist goes to #2

   ```sh
   ls -al ~/.ssh
   ```

2. Generate a new SSH key and add it to your machine's SSH agent

   > Source: [Generating a new SSH key][5]

   ```sh
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```

   Note: If you are using a legacy system that doesn't support the Ed25519 algorithm, use:

   ```sh
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```

3. Adding your SSH key to the ssh-agent, run command and see `Agent pid 12322`

   ```sh
   eval "$(ssh-agent -s)"
   ```

4. To automatically load keys into the ssh-agent and store passphrases in your keychain, modify `~/.ssh/config` file to contain the following lines

   ```
   Host github.com
     AddKeysToAgent yes
     UseKeychain yes
     IdentityFile ~/.ssh/id_ed25519
   ```

5. Add your SSH private key to the ssh-agent and store your passphrase in the keychain

   ```sh
   ssh-add --apple-use-keychain ~/.ssh/id_ed25519
   ```

6. Copies the contents of the `id_ed25519.pub` file to your clipboard

   ```sh
   pbcopy < ~/.ssh/id_ed25519.pub
   ```

7. Add the SSH public key to your account on GitHub.

   > Source: [Add the SSH public key to your account on GitHub.][6]

8. Check your repo remote

   ```sh
   git remote -v
   ```

   should show:

   ```
   origin  https://github.com/USERNAME/REPOSITORY.git (fetch)
   origin  https://github.com/USERNAME/REPOSITORY.git (push)
   ```

9. Change repo remote
   ```sh
   git remote set-url origin git@github.com:USERNAME/OTHERREPOSITORY.git
   ```
   and check remote should show:
   ```
   origin  git@github.com:USERNAME/OTHERREPOSITORY.git (fetch)
   rigin  git@github.com:USERNAME/OTHERREPOSITORY.git (push)
   ```

## Signing commits

> Source: [Signing commits][1]

Signing commits on git allows you to verify the authenticity of your commits. This is useful for ensuring that your commits have not been tampered with. To sign commits on git, you can use the following command:

```sh
git commit -S -m "YOUR_COMMIT_MESSAGE"
```

### Telling Git about your signing key

#### 1. Telling Git about your GPG key

> Source: [Telling Git about your GPG key][3]

From the list of GPG keys, copy the GPG key ID you'd like to use. In this example, the GPG key ID is `3AA5C34371567BD2`

```bash
gpg --list-secret-keys --keyid-format LONG
```

and output

```bash
/Users/hubot/.gnupg/secring.gpg
------------------------------------
sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
uid                          Hubot
ssb   4096R/42B317FD4BA89E7A 2016-03-10
```

To set your GPG signing key in Git, `3AA5C34371567BD2`

```bash
git config --global user.signingkey 3AA5C34371567BD2
```

#### 2. Telling Git about your SSH key

> Source: [Telling Git about your SSH key][4]

TODO

# Frequently Asked Questions

## 1. LF <==> CRLF

> Source: [stackoverflow - LF will be replaced by CRLF in git - What is that and is it important? [duplicate]][7]\
> Source: [stackoverflow - git replacing LF with CRLF][8]

In Unix systems the end of a line is represented with a line feed (LF). In windows a line is represented with a carriage return (CR) and a line feed (LF) thus (CRLF).

For Windows

- use **core.autocrlf = true** if you plan to use this project under Unix as well (and unwilling to configure your editor/IDE to use unix line endings)
- use **core.autocrlf = false** if you plan to use this project under Windows only (or you have configured your editor/IDE to use unix line endings)
- never use **core.autocrlf = input** unless you have a good reason to (eg if you're using unix utilities under windows or if you run into makefiles issues)

Personal preference is configuring the editor
/IDE to use Unix-style endings, and setting `core.autocrlf` to `false`.

```bash
git config --global core.autocrlf false
```

#### How to set LF manually per file in VS Code

1.  - Click on the CRLF button found at the bottom-right.
    - Alternatively, you can open your Command Palette by pressing CTRL+SHIFT+P, add Change End of Line Sequence, then select LF, as you see in the second step.
2.  Click on LF at the top.

<!-- This is commented out. -->
<!-- Reference Links -->

[1]: https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits
[2]: https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key#telling-git-about-your-gpg-key
[3]: https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key#telling-git-about-your-ssh-key
[4]: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
[5]: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key
[6]: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account
[7]: https://stackoverflow.com/questions/5834014/lf-will-be-replaced-by-crlf-in-git-what-is-that-and-is-it-important
[8]: https://stackoverflow.com/questions/1967370/git-replacing-lf-with-crlf/20653073#20653073

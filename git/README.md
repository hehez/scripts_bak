[_metadata_:author]:    - ""
[_metadata_:date]:      - "10/14/2019"

# Git Dev Setup
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
### Telling Git about your signing key
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
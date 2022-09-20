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
git config --global alias.cp cherry-pick
```

## LF <==> CRLF
> Source: [stackoverflow - LF will be replaced by CRLF in git - What is that and is it important? [duplicate]](https://stackoverflow.com/questions/5834014/lf-will-be-replaced-by-crlf-in-git-what-is-that-and-is-it-important)\
> Source: [stackoverflow - git replacing LF with CRLF](https://stackoverflow.com/questions/1967370/git-replacing-lf-with-crlf/20653073#20653073)

In Unix systems the end of a line is represented with a line feed (LF). In windows a line is represented with a carriage return (CR) and a line feed (LF) thus (CRLF).

For Windows
- use **core.autocrlf = true** if you plan to use this project under Unix as well (and unwilling to configure your editor/IDE to use unix line endings)
- use **core.autocrlf = false** if you plan to use this project under Windows only (or you have configured your editor/IDE to use unix line endings)
- never use **core.autocrlf = input** unless you have a good reason to (eg if you're using unix utilities under windows or if you run into makefiles issues)

Personal preference is configuring the editor/IDE to use Unix-style endings, and setting `core.autocrlf` to `false`. 
```bash
git config --global core.autocrlf false
```

#### How to set LF manually per file in VS Code
1. 
    - Click on the CRLF button found at the bottom-right.
    - Alternatively, you can open your Command Palette by pressing CTRL+SHIFT+P, add Change End of Line Sequence, then select LF, as you see in the second step. 
2. Click on LF at the top.

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
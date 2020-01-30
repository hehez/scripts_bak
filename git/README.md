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

## Git config
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
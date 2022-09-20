[_metadata_:author]:    - ""
[_metadata_:date]:      - "01/22/2021"

# Linux Latex Setup
## Install
```bash
sudo apt install texlive
sudo apt install texlive-latex-extra
sudo apt-get install texlive-fonts-extra
```

## Find missing .sty file
```bash
apt-cache search filename
```

## JDF format
### JDF github repo
> Source: [JDF](https://github.com/iamjakewarner/jdf)

### Quick start
#### Generate Biber reference
```bash
biber jdf-starter
```

### Generate PDF file
```bash
pdflatex jdf-starter
```
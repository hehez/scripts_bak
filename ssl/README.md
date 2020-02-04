[_metadata_:author]:    - ""
[_metadata_:date]:      - "02/04/2020"

# HTTPS SSL Setup
## Apply SSL Certificate
> Source: [Let’s Encrypt](https://letsencrypt.org/getting-started/)

> Source: [github: certbot](https://github.com/certbot/certbot)

### Install `Cerbot` ACME client
CentOS 7
```bash
yum install certbot
```

### Get certificate
```bash
certbot certonly --webroot -w /var/www/example -d example.com -d www.example.com
```

### Download `Certbot`
```bash
git clone https://github.com/certbot/certbot
cd certbot
./certbot-auto --help
```

# 
CentOS
> Source: [certbot.eff.org](https://certbot.eff.org/lets-encrypt/centosrhel7-other)
### SSH into your server
### Enable EPEL repo

```bahs
sudo yum install epel-release
```

### Install Certbot
```bash
sudo yum install certbot
```

If you see error message about `Failed: python-urllib3.noarch 0:1.10.2-7.el7`, manually remove the packages from `/usr/lib/python2.7/site-packages`
```bash
rm -rf /usr/lib/python2.7/site-packages/urllib3/packages/ssl_match_hostname
```

### Choose how you'd like to run Certbot
Yes, my web server is not currently running on this machine
```bash
sudo certbot certonly --standalone
```

You might miss some packages:
```bash
yum install python-urllib3
pip install chardet
```

No, I need to keep my web server running.
```bash
sudo certbot certonly --webroot
```
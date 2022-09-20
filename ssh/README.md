[_metadata_:author]:    - ""
[_metadata_:date]:      - "02/04/2020"

# SSH Setup
> Source: [SSH login without password](http://www.linuxproblem.org/art_9.html)

Log in from local A to a target server B

From A:
```bash
ssh b@B mkdir -p .ssh
b@B's password: 

cat ~/.ssh/id_rsa.pub | ssh b@B 'cat >> .ssh/authorized_keys'
b@B's password:

ssh b@B
```

Boom!!!

---

A note from one of our readers: Depending on your version of SSH you might also have to do the following changes:

- Put the public key in .ssh/authorized_keys2
- Change the permissions of .ssh to 700
- Change the permissions of .ssh/authorized_keys2 to 640

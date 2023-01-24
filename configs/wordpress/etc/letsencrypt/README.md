<img src="https://s3.amazonaws.com/devops.public/images/devops.click/devops.click_github_markdown.png">

```
 ____              ___                  _ _      _
|  _ \  _____   __/ _ \ _ __  ___   ___| (_) ___| | __
| | | |/ _ \ \ / / | | | '_ \/ __| / __| | |/ __| |/ /
| |_| |  __/\ V /| |_| | |_) \__ \| (__| | | (__|   <
|____/ \___| \_/  \___/| .__/|___(_)___|_|_|\___|_|\_\
                       |_|
------------------------------------------------------
                    LETS ENCRYPT
------------------------------------------------------
```
> **_Author_**: [Anderson Ayres Bittencourt](https://anderson.devops.click)<br>Reference: https://devops.click/tags/letsencrypt/

---

**How to generate:**
```
cd /etc/letsencrypt/
# wget https://github.com/joohoi/acme-dns-certbot-joohoi/raw/master/acme-dns-auth.py
# chmod +x acme-dns-auth.py
# sed -i 's/python/python3/g' acme-dns-auth.py
# certbot certonly --manual --manual-auth-hook /etc/letsencrypt/acme-dns-auth.py --preferred-challenges dns --debug-challenges -d \*.devops.click -d devops.click -v
```

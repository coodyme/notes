#linux 

Install argon2

```bash
sudo apt-get install argon2
```

Using the OWASP minimum recommended settings

```bash
echo -n "password" | argon2 "$(openssl rand -base64 32)" -e -id -k 19456 -t 2 -p 1
```
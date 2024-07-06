# SSL Certificate

## Create a CA key (your own little on-premise Certificate Authority):

```bash
openssl genpkey -algorithm RSA -aes128 -out private-ca.key -outform PEM -pkeyopt rsa_keygen_bits:2048
```

## Create a CA certificate:

```bash
openssl req -x509 -new -nodes -sha256 -days 825 -key private-ca.key -out self-signed-ca-cert.crt
```

## Create a bitwarden server key:

```bash
openssl genpkey -algorithm RSA -out bitwarden.key -outform PEM -pkeyopt rsa_keygen_bits:2048
```

## Create the bitwarden certificate request file:

```bash
openssl req -new -key bitwarden.key -out bitwarden.csr
```

# Create .crt compatible with iOS, MacOS and Chrome

## Create a manually file bitwarden.ext

```bash
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
extendedKeyUsage = serverAuth
subjectAltName = @alt_names

[alt_names]
IP.1 = 192.168.0.103
#DNS.1 = bitwarden.local
#DNS.2 = www.bitwarden.local
```

## Create the bitwarden certificate, signed from the root CA:

```bash
openssl x509 -req -in bitwarden.csr -CA self-signed-ca-cert.crt -CAkey private-ca.key -CAcreateserial -out bitwarden.crt -days 365 -sha256 -extfile bitwarden.ext
```

## Move certificate to certs folder

```bash
sudo mv bitwarden.crt bitwarden.key /etc/ssl/certs
```
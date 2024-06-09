#aws 
#aws-rds

## Connect using Basti

## Install AWS CLI


```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" unzip awscliv2.zip sudo ./aws/install
```

Check installation

```bash
aws --version
```

With IAM User created, follow the next steps

List profiles

```bash
aws configure list
```


Create a profile and define default region

```bash
aws configure --profile name@domain.com
```

You will need:

- AWS Access Key ID (Menu > **Security credentials)**
- AWS Secrets Access Key (Menu > **Security credentials)**
- Default region name > Eg. **us-east-1**
- Default output format > **json**

## Basti

```bash
npm install --global basti
```


Setup basti with AWS CLI Profile and Region

```bash
basti init --aws-profile name@domain.com --aws-region us-east-1
```

https://github.com/basti-app/basti?tab=readme-ov-file#-installation
# Connect to AWD RDS

For security:

- SSO Access
- Users must have MFA

## Install

```bash
mkdir -p ~/.local/bin
CURRENT_VERSION=$(curl -Ls https://api.github.com/repos/Versent/saml2aws/releases/latest | grep 'tag_name' | cut -d'v' -f2 | cut -d'"' -f1)
wget -c "https://github.com/Versent/saml2aws/releases/download/v${CURRENT_VERSION}/saml2aws_${CURRENT_VERSION}_linux_amd64.tar.gz" -O - | tar -xzv -C ~/.local/bin
chmod u+x ~/.local/bin/saml2aws
hash -r
saml2aws --version
```

Check if it works

```bahs
saml2aws --version
```


For autocomplete with zsh

```bash
eval "$(saml2aws --completion-script-zsh)"
```

For other OS https://github.com/Versent/saml2aws?tab=readme-ov-file#install

## Usage

```Bash
aws ssm start-session \
  --region eu-east-1 \
  --target i-fafafafafafafa \
  --document-name AWS-StartPortForwardingSessionToRemoteHost \
  --parameters host="${RDS_HOST}",portNumber="3306",localPortNumber="3306"
```
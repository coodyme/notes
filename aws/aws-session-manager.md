
#devops 
#aws 
#ec2

## Credentials

You will need to store your AWS Credentials in `~/.aws/credentials`

```bash
[profile]
aws_access_key_id = 
aws_secret_access_key = 
region=us-east-2
```

Then, run the command bellow to connect

```bash
aws ssm start-session --profile="PROFILE" --output json --target "EC2 INSTANCE ID" \
--document-name AWS-StartPortForwardingSession \
--parameters '{"portNumber":["5432"], "localPortNumber":["5432"]}'
```

`PROFILE` - Your credentials profile 
`TARGET` - Your EC2 Instance ID
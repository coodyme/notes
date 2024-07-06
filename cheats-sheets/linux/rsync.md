#linux 
#rsync
## Copy files via ssh

```bash
rsync -avz -e 'ssh' /path/to/local/dir user@remotehost:/path/to/remote/dir
```


```bash
rsync -avL --progress -e "ssh -i ~/.ssh/aws.pem" \ 
~/path/to/dir \
ubuntu@ec2-18-119-162-59.us-east-2.compute.amazonaws.com:/home/ubuntu/dir
```
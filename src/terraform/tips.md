- [ ] 
#terraform 

review changes using plan

```bash
terraform plan -var-file=env/dev/dev.tfvars
```

apply modifications based on plan

```bash
terraform apply -var-file=env/dev/dev.tfvars
```

destroy 
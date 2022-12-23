# infrastructure

## requirements
- terraform https://developer.hashicorp.com/terraform/downloads
- whitelist ip https://my.vultr.com/settings/#settingsapi
- get api key https://my.vultr.com/settings/#settingsapi

## create cluster
```bash
export TF_VAR_VULTR_API_KEY=...
terraform init
terraform plan
terraform apply
```
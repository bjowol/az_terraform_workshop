# Run
1. terraform init
(Optional) terraform validate
2. az login
3. az account list
4. az account set --subscription <name from step 3>
5. terraform plan --out plan
6. terraform apply plan
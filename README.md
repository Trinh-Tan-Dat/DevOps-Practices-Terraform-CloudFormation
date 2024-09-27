# DevOps-Practices-Terraform-CloudFormation

## Register Access key
1. Go to AWS Console
2. Search IAM on the search bar
3. Click on Users
4. Click "cloud_user" and click on "Security credentials" tab
5. Click on "Create access key"

## Configure AWS
1. Install AWS CLI
```sh
#Download
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

#Unzip file
unzip awscliv2.zip

#Run the install program
sudo ./aws/install

#Confirm the installation
aws --version
```

2. Set up AWS Credentials
```sh
aws configure

# Configure
AWS Access Key ID [None]: YOUR_ACCESS_KEY
AWS Secret Access Key [None]: YOUR_SECRET_KEY
Default region name [None]: us-east-1
Default output format [None]: json
```

## Configure Terraform
1. Install Terraform
```sh
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```


2. Initialize Terraform
```sh
terraform init
```

3. Plan Terraform Configuration
```sh
terraform plan
```

4. Apply Terraform Configuration
```sh
terraform apply
```

5. Destroy Terraform Configuration
```sh
terraform destroy
```

## Check resources
1. Check VPC
```sh
aws ec2 describe-vpcs
```

2. Check Subnets
```sh
aws ec2 describe-subnets
```

3. Check Security Groups
```sh
aws ec2 describe-security-groups
```

4. Check Route Tables
```sh
aws ec2 describe-route-tables
```

5. Check Internet Gateways
```sh
aws ec2 describe-internet-gateways
```

6. Check Instances
```sh
aws ec2 describe-instances
```

## CloudFormation
1. Create a CloudFormation Stack
```sh
aws cloudformation create-stack --stack-name myteststack --template-body file://~/DevOps/lab1/CloudFormation/Stack.yaml
```

2. Describe CloudFormation Stack
```sh
aws cloudformation describe-stacks --stack-name myteststack
```

3. Delete CloudFormation Stack
```sh
aws cloudformation delete-stack --stack-name myteststack
```

# webapp-infra


# AWS Web Application Infrastructure with Terraform

This Terraform configuration provisions a secure web application infrastructure on AWS with:

- EC2 instance in a public subnet
- RDS MySQL database in a private subnet
- Proper security groups restricting access
- User Data script to configure the web server


## Prerequisites

- Terraform >= 1.0.0
- AWS CLI configured
- AWS account with credentials configured
- AWS account with EC2/RDS permissions

## Quick Start

bash
# Clone repository
git clone 
cd 

# Initialize Terraform
terraform init

# Review execution plan
terraform plan

# Deploy infrastructure
terraform apply

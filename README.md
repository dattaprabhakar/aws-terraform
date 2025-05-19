# AWS Infrastructure Deployment with Terraform

This Terraform setup provisions a secure and production-ready architecture on AWS based on the provided architecture diagram.

## Features

- ✅ VPC with public & private subnets
- ✅ Internet Gateway, NAT Gateway, NACLs
- ✅ App Server & MySQL DB EC2 Instances
- ✅ Network Load Balancer (NLB)
- ✅ SSL VPN Server with OpenVPN (user_data based)
- ✅ VPC Endpoints (S3)
- ✅ IAM Roles & Instance Profiles
- ✅ CloudWatch Logs, CloudTrail
- ✅ Lambda Function Boilerplate
- ✅ SNS Topic & SES Domain Identity

---

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.3+
- AWS CLI (`aws configure`)
- An active AWS account with sufficient permissions

---

## Setup & Deployment

```bash
git clone <this-repo-url>
cd aws_architecture_terraform

terraform init
terraform plan
terraform apply


# AWS Architecture Terraform Deployment

This package sets up a full infrastructure as per your architecture diagram:

- VPC with public/private subnets
- App & MySQL EC2 instances
- Network Load Balancer (NLB)
- SSL VPN Server (OpenVPN installed)
- S3 Endpoint, IAM Roles
- CloudWatch, CloudTrail, Lambda, SES, SNS

## Prerequisites

- Terraform v1.3+
- AWS CLI configured (`aws configure`)
- Valid AWS credentials with IAM permissions

## Deployment

```bash
terraform init
terraform plan
terraform apply
```

## VPN EC2 Setup

The VPN server installs OpenVPN using EC2 user_data. You can SSH in and finish setup with:

```bash
sudo yum install -y openvpn easy-rsa
```

> Configure client `.ovpn` profiles using EasyRSA or a script.

## Notes

- This demo uses public key from `~/.ssh/id_rsa.pub`. Update if needed.
- Ensure your domain is verified in SES for email to work.

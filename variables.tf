# AWS Provider Configuration
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

# VPC Configuration
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

# EC2 Configuration
variable "instance_type_app" {
  description = "EC2 instance type for the App Server"
  type        = string
  default     = "t3.micro"
}

variable "instance_type_db" {
  description = "EC2 instance type for the MySQL Server"
  type        = string
  default     = "t3.micro"
}

variable "instance_type_vpn" {
  description = "EC2 instance type for the VPN Server"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID to use for EC2 instances"
  type        = string
  default     = "" # Fill in with your preferred AMI ID (e.g., Amazon Linux 2 or Ubuntu)
}

# Key Pair for EC2 SSH Access
variable "key_pair_name" {
  description = "Key pair name for SSH access to EC2"
  type        = string
  default     = "" # Replace with your actual key name
}

# NLB Configuration
variable "nlb_port" {
  description = "Port for the Network Load Balancer listener"
  type        = number
  default     = 80
}

variable "nlb_target_port" {
  description = "Target port for forwarding to app servers"
  type        = number
  default     = 80
}

# MySQL DB Configuration
variable "db_username" {
  description = "Username for MySQL DB"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password for MySQL DB"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "app_db"
}

# VPN Configuration
variable "vpn_admin_cidr" {
  description = "CIDR block or IP allowed to access the VPN"
  type        = string
  default     = "0.0.0.0/0" # Replace with specific IPs for security
}

# Tags
variable "project" {
  description = "Project tag to group resources"
  type        = string
  default     = "DevOpsProject"
}

variable "environment" {
  description = "Environment tag (dev, staging, prod)"
  type        = string
  default     = "dev"
}

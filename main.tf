
provider "aws" {
  region = var.region
}

module "network" {
  source = "./modules/network"
}

module "compute" {
  source = "./modules/compute"
}

module "nlb" {
  source = "./modules/nlb"
}

module "monitoring" {
  source = "./modules/monitoring"
}

module "security" {
  source = "./modules/security"
}

module "vpn" {
  source = "./modules/vpn"
}

module "endpoints" {
  source = "./modules/endpoints"
}

module "lambda" {
  source = "./modules/lambda"
}

module "iam" {
  source = "./modules/iam"
}

module "sns_ses" {
  source = "./modules/sns_ses"
}

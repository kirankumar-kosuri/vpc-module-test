module "vpc" {
  #source = "../terraform-aws-vpc"
  source = "git::https://github.com/kirankumar-kosuri/terraform-aws-vpc.git?ref=main"
#   vpc_cidr = "10.0.0.0/16"
#   project_name = "roboshop"
#   environment = "dev"

  vpc_cidr = var.vpc_cidr
  project_name = var.project_name
  environment = var.environment
  vpc_tags = var.vpc_tags
  
  # Public Subnets
  public_subnet_cidrs = var.public_subnet_cidrs

  # Private Subnets
  private_subnet_cidrs = var.private_subnet_cidrs

  # Database Subnets
  database_subnet_cidrs = var.database_subnet_cidrs

  is_peering_required = true
}
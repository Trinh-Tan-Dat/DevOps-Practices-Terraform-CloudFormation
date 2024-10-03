provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source           = "./vpc"
  vpc_cidr         = "10.0.0.0/16"
  public_subnet_cidr  = ["10.0.1.0/24"]
  private_subnet_cidr = ["10.0.2.0/24"]
}

module "nat-gateway" {
  source              = "./nat-gateway"
  public_subnet_id    = module.vpc.public_subnet_id
  allocation_id       = aws_eip.nat.id
}

module "route-tables" {
  source                = "./route-tables"
  vpc_id                = module.vpc.vpc_id
  public_subnet_id      = module.vpc.public_subnet_id
  private_subnet_id     = module.vpc.private_subnet_id
  internet_gateway_id   = module.vpc.igw_id
  nat_gateway_id        = module.nat-gateway.nat_gateway_id
}

module "security-groups" {
  source                    = "./security-group"
  vpc_id                    = module.vpc.vpc_id
  public_instance_cidr       = var.public_instance_cidr
  private_instance_cidr      = var.private_instance_cidr
}

module "ec2" {
    source                    = "./ec2"
    public_subnet_id          = module.vpc.public_subnet_id
    private_subnet_id         = module.vpc.private_subnet_id
    public_security_group_id  = module.security-groups.public_sg_id
    private_security_group_id = module.security-groups.private_sg_id
}

resource "aws_eip" "nat" {
  vpc = true
}
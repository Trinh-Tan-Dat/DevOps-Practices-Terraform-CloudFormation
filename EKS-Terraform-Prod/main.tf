provider "aws" {
  region = var.region
}

module "vpc" {
  source                = "./vpc"
  region                = var.region
  vpc_cidr              = var.vpc_cidr
  public_subnets_cidr   = var.public_subnets_cidr
  private_subnets_cidr  = var.private_subnets_cidr
  availability_zones    = var.availability_zones
}

module "eks" {
  source                = "./eks-cluster"
  cluster_name          = var.cluster_name
  cluster_version       = var.cluster_version
  vpc_id                = module.vpc.vpc_id
  private_subnets       = module.vpc.private_subnets
  worker_instance_type  = var.worker_instance_type
  key_name              = var.key_name
}


module "auto_scaling" {
  source = "./auto-scaling"
  desired_capacity = 2
  max_capacity     = 5
  min_capacity     = 1
  private_subnets  = module.vpc.private_subnets
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  instance_profile = module.eks.worker_iam_role
  key_name        = var.key_name
}

module "load_balancer" {
  source = "./load-balancer"
  name   = "my-app"
  vpc_id = module.vpc.vpc_id
  security_groups = [module.eks.cluster_security_group_id]
  subnets        = module.vpc.public_subnets
}








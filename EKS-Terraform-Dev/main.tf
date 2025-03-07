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

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.private_subnets

  # Sử dụng managed node groups
  self_managed_node_groups = {
    eks_managed_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = var.worker_instance_type
      key_name         = var.key_name
    }
  }

  tags = var.tags
}

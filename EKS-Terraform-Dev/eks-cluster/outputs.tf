output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_id" {
  description = "EKS cluster ID"
  value       = module.eks.cluster_id
}

output "worker_group_autoscaling_role_arn" {
  description = "IAM role ARN for worker group"
  value       = module.eks.self_managed_node_groups["eks_managed_nodes"].iam_role_arn
}


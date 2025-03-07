variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "Version of the EKS cluster"
  default     = "1.21"
}

variable "vpc_id" {
  description = "ID of the VPC where the cluster will be created"
  type        = string
}

variable "private_subnets" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "worker_instance_type" {
  description = "EC2 instance type for worker nodes"
  default     = "t3.medium"
}

variable "key_name" {
  description = "Name of the key pair to SSH into worker nodes"
  default     = "testkey"
}

variable "tags" {
  description = "Tags to associate with resources"
  type        = map(string)
  default     = {
    "Environment" = "dev"
    "Team"        = "DevOps"
  }
}

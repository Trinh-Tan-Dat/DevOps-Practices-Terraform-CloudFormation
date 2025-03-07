variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  description = "Public subnets CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets_cidr" {
  description = "Private subnets CIDR blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "Availability Zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  default     = "1.23"
}

variable "worker_instance_type" {
  description = "Instance type for worker nodes"
  default     = "t3.medium"
}

variable "key_name" {
  description = "Key pair name for EC2 instances"
  default     = "testkey"
}


variable "ami_id"{
  description = "value of the AMI ID"
  default = "ami-0ebfd941bbafe70c6"
}

variable "instance_type" {
  description = "value of the instance type"
  default = "t2.micro"
}
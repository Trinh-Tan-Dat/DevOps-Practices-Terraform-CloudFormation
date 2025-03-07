variable "desired_capacity" {
  description = "Desired capacity of the Auto Scaling Group"
  type        = number
}

variable "max_capacity" {
  description = "Maximum capacity of the Auto Scaling Group"
  type        = number
}

variable "min_capacity" {
  description = "Minimum capacity of the Auto Scaling Group"
  type        = number
}

variable "private_subnets" {
  description = "Private subnets to launch the instances"
  type        = list(string)
}

variable "ami_id" {
  description = "AMI ID for the instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the nodes"
  type        = string
}

variable "instance_profile" {
  description = "Instance profile for EC2 instances"
  type        = string
}

variable "key_name" {
  description = "Key name for EC2 instances"
  type        = string
}

variable "subnets" {
  description = "List of subnets for the Auto Scaling group"
  type = list(string)
}

variable "ami_id" {
  description = "AMI ID for instances"
}

variable "instance_type" {
  description = "Instance type for EC2"
}

variable "security_groups" {
  description = "Security groups to associate with the EC2 instances"
  type = list(string)
}

variable "min_size" {
  description = "Minimum number of instances"
}

variable "max_size" {
  description = "Maximum number of instances"
}

variable "desired_capacity" {
  description = "Desired number of instances"
}

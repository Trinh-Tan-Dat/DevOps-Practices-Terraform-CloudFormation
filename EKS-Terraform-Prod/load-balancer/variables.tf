variable "name" {
  description = "Name for the Load Balancer"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the Load Balancer is created"
  type        = string
}

variable "security_groups" {
  description = "Security groups for the Load Balancer"
  type        = list(string)
}

variable "subnets" {
  description = "Subnets for the Load Balancer"
  type        = list(string)
}

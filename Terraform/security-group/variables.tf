variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_instance_cidr" {
  description = "CIDR for SSH access to Public EC2"
  type        = string
}

variable "private_instance_cidr" {
  description = "CIDR for SSH access to Private EC2 from Public EC2"
  type        = string
}

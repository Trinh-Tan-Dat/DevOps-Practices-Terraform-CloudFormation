variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "public_instance_cidr" {
  description = "Allowed CIDR for SSH access to Public EC2"
  type        = string
  default     = "0.0.0.0/0" # Adjust with your IP for security
}

variable "private_instance_cidr" {
  description = "Allowed CIDR for SSH access to Private EC2 from Public EC2"
  type        = string
  default     = "10.0.1.0/24" # Subnet of Public EC2
}

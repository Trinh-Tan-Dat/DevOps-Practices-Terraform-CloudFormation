variable "public_subnet_id" {
  description = "Public Subnet ID"
  type        = string
}

variable "private_subnet_id" {
  description = "Private Subnet ID"
  type        = string
}

variable "public_security_group_id" {
  description = "Public EC2 Security Group ID"
  type        = string
}

variable "private_security_group_id" {
  description = "Private EC2 Security Group ID"
  type        = string
}

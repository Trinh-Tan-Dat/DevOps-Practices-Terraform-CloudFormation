variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for Public Subnet"
  type        = list(string)
}

variable "private_subnet_cidr" {
  description = "CIDR block for Private Subnet"
  type        = list(string)
}

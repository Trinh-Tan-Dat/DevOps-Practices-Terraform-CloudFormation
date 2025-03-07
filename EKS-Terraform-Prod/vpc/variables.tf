variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name for the VPC"
  default     = "main-vpc"
}

variable "public_subnets_cidr" {
  description = "Public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets_cidr" {
  description = "Private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "Availability Zones for the subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}


variable "public_subnets" {
  description = "IDs of public subnets"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "IDs of private subnets"
  type        = list(string)
  default     = []
}

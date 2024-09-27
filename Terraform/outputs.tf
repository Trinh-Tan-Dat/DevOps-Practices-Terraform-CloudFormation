output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "public_ec2_instance_id" {
  value = module.ec2.public_instance_id
}

output "private_ec2_instance_id" {
  value = module.ec2.private_instance_id
}

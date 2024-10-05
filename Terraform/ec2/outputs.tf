output "public_instance_id" {
  value = aws_instance.public_instance.id
}

output "private_instance_id" {
  value = aws_instance.private_instance.id
}

# output "public_ec2_ip" {
#   value = aws_ec2.public_ec2.public_ip
# }

# output "private_ec2_ip" {
#   value = aws_ec2.private_ec2.private_ip
# }
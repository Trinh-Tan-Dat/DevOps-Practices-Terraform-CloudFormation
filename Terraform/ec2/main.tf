resource "aws_instance" "public_instance" {
    ami           = "ami-06b21ccaeff8cd686" 
    instance_type = "t2.micro"
    subnet_id     = var.public_subnet_id
    security_groups = [var.public_security_group_id]
    monitoring = true
    ebs_optimized = true
    key_name = "testkey"
    root_block_device {
      encrypted     = true
    }
    tags = {
        Name = "Public EC2 Instance"
    }
    metadata_options {
      http_endpoint = "enabled"
      http_tokens   = "required"
    }
    iam_instance_profile = "test"
}
resource "aws_instance" "private_instance" {
  ami           = "ami-06b21ccaeff8cd686" 
  instance_type = "t2.micro"
  subnet_id     = var.private_subnet_id
  security_groups = [var.private_security_group_id]
  ebs_optimized = true
  key_name = "testkey"
  monitoring = true
  root_block_device {
    encrypted     = true
  }
  tags = {
    Name = "Private EC2 Instance"
  }
  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }
  iam_instance_profile = "test"
}

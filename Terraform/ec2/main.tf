resource "aws_instance" "public_instance" {
    ami           = "ami-0ebfd941bbafe70c6"  # Replace with actual AMI ID
    instance_type = "t2.micro"
    subnet_id     = var.public_subnet_id
    security_groups = [var.public_security_group_id]


    key_name = "testkey"

    tags = {
        Name = "Public EC2 Instance"
    }
}

resource "aws_instance" "private_instance" {
  ami           = "ami-0ebfd941bbafe70c6"  # Replace with actual AMI ID
  instance_type = "t2.micro"
  subnet_id     = var.private_subnet_id
  security_groups = [var.private_security_group_id]

  key_name = "testkey"


  tags = {
    Name = "Private EC2 Instance"
  }
}

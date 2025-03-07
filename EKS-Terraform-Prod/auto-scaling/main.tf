resource "aws_autoscaling_group" "eks_nodes" {
  desired_capacity     = var.desired_capacity
  max_size             = var.max_capacity
  min_size             = var.min_capacity
  vpc_zone_identifier = var.private_subnets

  launch_configuration = aws_launch_configuration.eks_nodes.id

  tag {
    key                 = "Name"
    value               = "eks-node-${count.index}"
    propagate_at_launch = true
  }
}

resource "aws_launch_configuration" "eks_nodes" {
  name          = "eks-launch-configuration"
  image_id     = var.ami_id
  instance_type = var.instance_type

  lifecycle {
    create_before_destroy = true
  }

  iam_instance_profile = var.instance_profile
  key_name            = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              echo "EKS Node Provisioning"
              EOF
}

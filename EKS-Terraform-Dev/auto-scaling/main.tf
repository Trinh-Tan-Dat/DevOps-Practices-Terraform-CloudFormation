resource "aws_autoscaling_group" "asg" {
  launch_configuration = aws_launch_configuration.lc.id
  vpc_zone_identifier  = var.subnets
  min_size             = var.min_size
  max_size             = var.max_size
  desired_capacity     = var.desired_capacity
}

resource "aws_launch_configuration" "lc" {
  image_id        = var.ami_id
  instance_type   = var.instance_type
  security_groups = var.security_groups
}

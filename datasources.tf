data "aws_subnets" "subnet_tags" {
  filter {
    name   = "tag:Name"
    values = var.subnet_tags
  }
}

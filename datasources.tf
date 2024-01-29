data "aws_subnets" "subnet_tags" {
  filter {
    name   = "tag:Name"
    values = var.db_subnet_tags
  }
  filter {
    name   = "vpc-id"
    values = [ aws_vpc.ntier.id ]
  }
}

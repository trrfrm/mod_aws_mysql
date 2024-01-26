output "subnet_testing" {
    value       = aws_subnet.subnets
}

output "db_instance_id" {
    description = "ID of the EC2 instance"
    value       = aws_db_instance.database.id
}

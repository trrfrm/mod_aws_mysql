locals {
    all_ports            = 0
    ssh_port             = 22
    http_port            = 80
    app_port             = 8080
    db_port              = 3306
    protocol             = "tcp"
    any_protocol         = "-1"
    any_where            = "0.0.0.0/0"
    any_where_ipv6       = "::/0"
    public_ip_enabled    = "true"
    env_prefix           = "fromtf"
    default_desc         = "Created from Terraform"
    
    db_subnet_groupname  = "stack-db-subnet-group"
    db_allocated_storage = 20
    db_name              = "mydb"
    db_engine            = "mysql"
    db_engine_version    = "8.0.35"
    db_instance_class    = "db.t3.micro"
    db_username          = "admin"
    db_password          = "admin123"
    db_identifier        = "firstrdsfromtf"

}
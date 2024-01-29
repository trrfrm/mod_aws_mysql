variable "region" {
    type    = string
    default = "ap-south-2"
}

variable "vpc_cidr" {
    type    = string
    default = "10.10.0.0/16"
}

variable "subnet_azs" {
    type    = list(string)
    default = [ "ap-south-2a", "ap-south-2c" ]
}

variable "db_subnet_tags" {
    type    = list(string)
    default = [ "db1", "db2" ]
}

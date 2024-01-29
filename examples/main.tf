module "mod_vpc" {

    source              = "git::https://github.com/trrfrm/mod_vpc.git"
    
    default_region      = {
      name              = "from-tf"
      region            = "ap-south-2"
    }
    network_details     = {
      name              = "tf-vpc"
      cidr_block        = "10.10.0.0/16"
    }
}

output "total_subnets" {
    value               = module.mod_vpc.subnet_count
}

output "subnet_testing" {
    value               = module.mod_vpc.subnet_tests
}

output "ec2_public_ip_addresses" {
    value               = module.mod_vpc.ec2_public_ips
}

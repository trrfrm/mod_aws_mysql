resource "aws_vpc" "ntier" {
    cidr_block           = var.vpc_cidr
    tags     = {
        Name = "ntiervpc-${local.env_prefix}"
    }
}

resource "aws_subnet" "subnets" {
    count              = length(var.subnet_tags)
    vpc_id             = aws_vpc.ntier.id
    cidr_block         = cidrsubnet(var.vpc_cidr, 8, count.index)
    availability_zone  = var.subnet_azs[count.index]

    tags     = {
        Name = var.subnet_tags[count.index]
    }
}

resource "aws_security_group" "db_SG" {
    vpc_id               = aws_vpc.ntier.id
    description          = local.default_desc

    ingress {
        from_port        = local.ssh_port
        to_port          = local.ssh_port
        protocol         = local.protocol
        cidr_blocks      = [local.any_where]
    }  
    ingress {
        from_port        = local.db_port
        to_port          = local.db_port
        protocol         = local.protocol
        cidr_blocks      = [var.vpc_cidr]
    }
    egress {
        from_port        = local.all_ports
        to_port          = local.all_ports
        protocol         = local.any_protocol
        cidr_blocks      = [local.any_where]
        ipv6_cidr_blocks = [local.any_where_ipv6]
    }
    
    tags                 = {
        Name   = "DB-Security-${local.env_prefix}"
    }
    depends_on = [ aws_vpc.ntier ]
}

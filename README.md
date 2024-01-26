## module: _mod_aws_mysql_

### Creates an Amazon RDS instance in AWS using a terraform module along with 2 subnets
----------------------------------------------------------------------------------------

* This Terraform module deploys a MySQL db in AWS with 2 subnets passed in as input parameters

* The module also creates 2 Route Tables(Public & Private), adding a web-subnet in public-rt and the db-subnet in private-rt and ofcourse a  security group to restrict security rules on private-subnets in the deployed network

### Example Usage
------------------

* Kindly, Refer the `./examples/` directory
* You may execute `terraform apply` command in the examples's directory to check-out _mod_aws_mysql_ module
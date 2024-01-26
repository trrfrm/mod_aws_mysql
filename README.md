## module _mod_aws_mysql_

### Creates a basic virtual private cloud in AWS using a terraform module along with 2 Jenkins
----------------------------------------------------------------------------------------------

* This Terraform module deploys a MySQL db in AWS with 2 subnets passed in as input parameters

* The module also creates 2 Route Tables(Public & Private), adding a web-subnet in public-rt and the db-subnet in private-rt and ofcourse a default security group to allow security rules on subnets in the deployed network

### Example Usage
-----------------

* Kindly, Refer to the `./examples/` directory. 
* You may execute `terraform apply` command in the examples's directory to try the _mod_aws_mysql_ module
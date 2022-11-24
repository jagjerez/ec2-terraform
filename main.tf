variable "ACCESS_KEY" {
  description = "Access-key-for-AWS"
  default = "no_access_key_value_found"
}
 
variable "SECRET_KEY" {
  description = "Secret-key-for-AWS"
  default = "no_secret_key_value_found"
}
 
output "ACCESS_KEY_IS" {
  value = var.ACCESS_KEY
}
 
output "SECRET_KEY_IS" {
  value = var.SECRET_KEY
}


provider "aws" {
	region = "eu-west-1"
    access_key = var.ACCESS_KEY
	secret_key = var.SECRET_KEY
}

resource "aws_instance" "example" {
	ami = "ami-01cae1550c0adea9c"
	instance_type = "t2.micro"
  subnet_id = "subnet-074f63f7b150c1aed"
}
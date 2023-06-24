# This is AWS provider details
provider "aws" {
    profile = "default"
    region  = "ap-south-1"
}

# We used aws_instance as resource 
resource "aws_instance" "myserver" {
    
    ami = "ami-057752b3f1d6c4d6c"
    instance_type = "t2.micro"
    key_name = "mumbai130623"
    monitoring  = true
    vpc_security_group_ids = ["sg-0d622320e3a911bfd"]
    subnet_id = "subnet-0abea4b660e03cfc8"
}

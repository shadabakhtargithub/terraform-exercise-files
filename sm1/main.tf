# Configure the AWS Provider
provider "aws" {
access_key = "AKIA322GZVOTHG2ZYXXD"
secret_key = "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"
region = "ap-south-1"
}

# Create AWS Ec2 Instance via terraform script
    resource "aws_instance" "web" {
    ami = "ami-0a23ccb2cdd9286bb"
    instance_type = "t2.micro"

    tags = {
    Name = "HelloWorld"
    }
    }
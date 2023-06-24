# Provider AWS
provider "aws" {
    profile = "default"
    region  = "ap-south-1"
}

# Create VPC
resource "aws_vpc" "vpc1" {
cidr_block = "10.0.0.0/16"
}
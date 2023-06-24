# This is AWS provider details

provider "aws" {
    profile = "default"
    region  = "ap-south-1"
}


# Creating S3 Bucket

module "s3_bucket" {

  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "skillwisebucket2"
  acl    = "private"

  versioning = {
    enabled = true
  }

}
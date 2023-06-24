# Configure the AWS Provider
provider "aws" {

access_key = var.aws_access_key
secret_key = var.aws_secret_key
region = var.aws_region
}

module "s3_bucket" {

  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = "skillwisebucket4"
  acl    = "private"

  versioning = {
    enabled = true
  }

}
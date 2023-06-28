provider "aws" {
  region = var.region
  profile = "default"

  default_tags {
    tags = {
      created_by = "terraform"
      workspace = terraform.workspace
    }
  }
}
variable "aws_access_key" {
    type = string
    description = "AWS Access Key"
    sensitive = true
}

variable "aws_secret_key" {
    type = string
    description = "AWS secret Key"
    sensitive = true
}

variable "aws_region" {
    default = "ap-south-1"
}
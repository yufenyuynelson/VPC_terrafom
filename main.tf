provider "aws" {
  region = "us-east-1"
  access_key = var.my-access-key
  secret_key = var.my-secret-key
}

variable "my-access-key" {
  }
variable "my-secret-key" {
  }

/*
terraform {
  backend "s3" {
    bucket = "terraform-boy"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
*/



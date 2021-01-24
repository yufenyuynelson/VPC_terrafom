provider "aws" {
  region = "us-east-1"

}

terraform {
  backend "s3" {
    bucket = "terraform-boy"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}




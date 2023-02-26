terraform {
  backend "s3" {
    bucket = "terraform-statefile-226"
    key    = "sample/terraform/state/terraform.tfstate"
    region = "us-west-2"
  }
}
provider "aws" {
  # Configuration options
  region     = "us-west-2"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

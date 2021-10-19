terraform {
  backend "s3" {
    bucket = "terraformbucket94"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraformlockstate"
  }
}
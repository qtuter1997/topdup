terraform {
  required_version = "0.14.5"

  backend "s3" {
    bucket = "infra-remotestates"
    key    = "staging/vpc"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = var.region
}

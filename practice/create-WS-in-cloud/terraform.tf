terraform {

  cloud {
    organization = "store-local-state-file"

    workspaces {
      name = "learn-terraform"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
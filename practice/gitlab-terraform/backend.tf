terraform {  
  backend "s3" {
    bucket         	   = "gitlab-cicd-bucket-2128"
    key                = "./terraform.tfstate"
    region         	   = "us-east-1"
    encrypt        	   = true
    dynamodb_table     = "terraform-lock-db"
  }
}  
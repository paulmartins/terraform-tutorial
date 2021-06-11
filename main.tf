terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}


module "app_server" {
  source = "./modules/application" // can be registry or github or s3, ...
  // variables
  ec2_instance_type = "t2.micro"
  ami               = "my-app-ami"
  tags = {
    Name = "server for web"
    Env  = "dev"
  }
}

module "app_storage" {
  source = "./modules/storage"
  // variables
  bucket_name = "my-app-bucket"
  tags = {
    Name = "bucket for storage"
    Env  = "dev"
  }
}

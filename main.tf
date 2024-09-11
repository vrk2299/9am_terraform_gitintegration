terraform {
  backend "s3" {
    bucket = "salonibucket9"
    key = "terraform_backend/terraform.tfstate"
    region = "ap-south-1"
        
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}


provider "aws" {
    region = "ap-south-1"  #mumbai_region

  
}


resource "aws_instance" "myserver" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    key_name = "mum"
  
}

resource "aws_instance" "server2" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    key_name = "vrkmumbai"

  
}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.95.0"
    }
  }

  backend "s3" {
    bucket = "${var.Environment}-remote-state-s3-bucket"
    key = "terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "${var.Environment}-state-lock-dynamodb-table"
  }
}
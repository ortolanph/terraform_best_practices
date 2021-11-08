terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    encrypt        = false
    bucket         = "terraform-best-practices-state-bucket"
    dynamodb_table = "terraform-best-practices-states-lock"
    region         = "eu-central-1"
    key            = "infra/terraform.tfstate"
    workspace      = var.workspace_name
  }
}
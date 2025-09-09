provider "aws" {
  region = var.region
}

terraform {
    required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.3"
    }
  }

  backend "s3" {
    bucket = "github-actions-bucket-1937"
    key    = "gitops-actions/state.tfstate"
    region = "us-east-1"
  }
}





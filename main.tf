terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "gitops_demo" {
  bucket        = "rahul-senapati-p18-gitops-2026"
  force_destroy = true

  tags = {
    Project     = "P18-GitOps-Infra-Deployment"
    ManagedBy   = "GitHub-Actions-GitOps"
    Environment = "production"
  }
}

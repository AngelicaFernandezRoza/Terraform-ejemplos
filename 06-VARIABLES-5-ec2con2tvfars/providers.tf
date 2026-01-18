
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
ç

provider "aws" {
  profile = "awsacademy-proyectopruebas"
  region  = "us-east-1"
}

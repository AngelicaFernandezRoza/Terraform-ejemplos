# Bloque terraform para definir el proveedor AWS. 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS provider
provider "aws" {
  profile = var.perfil_aws
  region  = var.region
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = var.tipo_ami
  instance_type = var.tipo_instancia
}

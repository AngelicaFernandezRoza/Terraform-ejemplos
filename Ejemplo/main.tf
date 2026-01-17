provider "aws" {
  region = var.region
}

resource "aws_vpc" "vpc_clase" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "vpc-clase"
  }
}

resource "aws_subnet" "subred_publica" {
  vpc_id            = aws_vpc.vpc_clase.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "subred-publica"
  }
}

resource "aws_subnet" "subred_privada" {
  vpc_id            = aws_vpc.vpc_clase.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "subred-privada"
  }
}

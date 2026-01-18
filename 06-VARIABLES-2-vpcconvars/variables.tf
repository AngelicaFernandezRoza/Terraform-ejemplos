variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "perfil_aws" {
  description = "The AWS profile to use"
  type        = string
  default     = "awsacademy-151777"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "us-east-1a"
}

variable "vpc_name" {
  description = "The name tag for the VPC"
  type        = string
  default     = "vpc-clase"
}

variable "subnet_name" {
  description = "The name tag for the public subnet"
  type        = string
  default     = "subred-publica"
}


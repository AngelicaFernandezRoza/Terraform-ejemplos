variable "perfil_aws" {
  description = "The AWS profile to use"
  type        = string
  default     = "awsacademy-151777"
}

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "ubuntu_ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0ecb62995f68bb549"
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t3.micro"
}
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

variable "tipo_instancia" {
  description = "The type of EC2 instance to create"
  type        = string
  default     = "t3.micro"
}

variable "tipo_ami" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0ecb62995f68bb549"
}
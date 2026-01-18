resource "aws_instance" "example" {
  ami           = var.ubuntu_ami
  instance_type = var.instance_type
  
  tags = {
    Name = "terraform-example"
  }
}
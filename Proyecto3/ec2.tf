# Objetivo: Crear una instancia EC2 en la VPC default con Ubuntu 24.04 LTS. 
# En este ejemplo observar que: 
#
#  resource → crear EC2
# 
# data → consultar VPC, subnets, AMI
# 
# referencias → ami = data.aws_ami.ubuntu_2404.id, subnet_id = data.aws_subnet_ids.default.ids[0]
# 
#  tags → buenas prácticas

# Leer la VPC default existente
data "aws_vpc" "default" {
  default = true
}

# Leer las subnets existentes de la VPC default
data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}

# Buscar la última AMI de Ubuntu 24.04 LTS
data "aws_ami" "ubuntu_2404" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# Crear la instancia EC2
resource "aws_instance" "servidor1" {
  ami           = data.aws_ami.ubuntu_2404.id
  instance_type = "t2.micro"
  key_name      = "vockey"

  subnet_id = data.aws_subnet_ids.default.ids[0]

  tags = {
    Name = "servidor1"
  }
}

output "ip_publica_ec2_ejemplo" {
  value = aws_instance.example.public_ip
}

output "ec2_ejemplo_id" {
  value = aws_instance.example.id
}


// Este fichero define las salidas del proyecto Terraform.
// Las salidas permiten mostrar información relevante después de aplicar la configuración.
// En este caso, mostramos la IP pública de la instancia "servidor1".

output "ip_publica_servidor1" {
  value = aws_instance.servidor1.public_ip
}

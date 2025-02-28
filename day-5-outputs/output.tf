output "ip" {
    value = aws_instance.asdf.public_ip
}

output "az" {
    value = aws_instance.asdf.availability_zone
}

output "private-ip" {
  value = aws_instance.asdf.private_ip
  sensitive = true
}
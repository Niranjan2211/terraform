output "ip_addr" {
  value = aws_instance.app.private_ip
}

output "ami" {
  value = aws_instance.app.ami
}

output "instance_type" {
  value = aws_instance.app.instance_type
}


output "network" {
  value = aws_instance.app.associate_public_ip_address
}
output "availability_zone" {
  value = aws_instance.app.availability_zone
}
output "host_id" {
  value = aws_instance.app.host_id
}
output "subnet_id" {
  value = aws_instance.app.subnet_id
}
output "security_groups" {
  value = aws_instance.app.security_groups
}

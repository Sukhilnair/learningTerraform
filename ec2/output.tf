output "instance_pulic_ip" {
  description = "Public IP for EC2"
  value = [for i in aws_instance.app_server: i.public_ip]
}

output "instance_id" {
  description = "Instance ID of EC2"
  value = [for i in aws_instance.app_server: i.id]
}
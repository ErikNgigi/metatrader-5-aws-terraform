output "metatrader_sg" {
  description = "output value of the metatrader security groups"
  value       = aws_security_group.metatrader_5_sg.id
}

output "ssh_key" {
  description = "output value of the ssh key stored locally"
  value       = aws_key_pair.ssh_key.id
  sensitive   = true
}

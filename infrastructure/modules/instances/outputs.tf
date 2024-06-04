output "metatrader_5_public_ip" {
  description = "output value of the public ipv4 address of the ec2 instance"
  value = aws_instance.metatrader_instance_1.public_ip
}

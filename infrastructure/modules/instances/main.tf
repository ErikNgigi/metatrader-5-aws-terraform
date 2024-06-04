resource "aws_instance" "metatrader_instance_1" {
  ami             = var.ami
  instance_type   = var.instance
  security_groups = [var.metatrader_5_sg]
  subnet_id       = var.metatrader_public_subnet_1
  key_name        = var.metatrader_ssh_key

  tags = {
    Name = var.instance_name
  }
}

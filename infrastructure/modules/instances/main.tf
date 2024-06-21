resource "aws_instance" "metatrader_instance_1" {
  ami             = var.ami
  instance_type   = var.instance
  security_groups = [var.metatrader_5_sg]
  subnet_id       = var.metatrader_public_subnet_1
  key_name        = var.metatrader_ssh_key
  user_data       = file("${path.module}/scripts/extras.sh")
  ebs_block_device {
    device_name = "/dev/sda1"
    volume_size = 20
    volume_type = "gp3"
  }

  tags = {
    Name = var.instance_name
  }
}

variable "ami" {
  description = "imported value of the ami from the root module"
  type        = string
}

variable "instance" {
  description = "imported value of the instance type from the root module"
  type        = string
}

variable "instance_name" {
  description = "name of the metatrader ec2 instance"
  type        = string
  default     = "metatrader_5_web_server_1"
}

variable "metatrader_5_sg" {
  description = "imported value of the metatrader 5 security group from the security module"
  type        = string
}

variable "metatrader_public_subnet_1" {
  description = "imported value of the 1st public subnet for the metatrader vpc"
  type        = string
}

variable "metatrader_ssh_key" {
  description = "imported value of the ssh key for the metatrader instance from the security module"
  type        = string
}

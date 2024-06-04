variable "vpc_cidr" {
  description = "VPC CIDR imported value from the root variables file"
}

variable "vpc_id" {
  description = "output value of the vpc id from the networks module"
  type        = string
}

variable "security_group_name" {
  description = "name of the security group for the metatrader 5 vpc"
  type        = string
  default     = "metatrader_5_sg"
}

variable "ssh_key_name" {
  description = "name of the ssh key that will be generated locally"
  type        = string
  default     = "metatrader_ssh_key"
}

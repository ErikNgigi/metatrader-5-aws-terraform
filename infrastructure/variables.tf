variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_1" {
  description = "The public CIDR block for the first subnet"
  type        = string
}

# variable "public_subnet_cidr_2" {
#   description = "The public CIDR block for the second subnet"
# }

variable "az-1" {
  description = "1st availability zone to distribute across subnets"
  type        = string
}

variable "az-2" {
  description = "1st availability zone to distribute across subnets"
  type        = string
}

variable "az-3" {
  description = "1st availability zone to distribute across subnets"
  type        = string
}

variable "ami" {
  description = "id value of the amazon machine image for the ec2"
  type        = string
}

variable "instance" {
  description = "instance family applied to the ec2 instance"
  type        = string
}

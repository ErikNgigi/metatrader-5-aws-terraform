variable "vpc_cidr" {
  description = "VPC CIDR imported value from the root variables file"
}

variable "public_cidr_subnet_1" {
  description = "1st public subnet CIDR imported value from the root variables file"
}

variable "public_cidr_subnet_2" {
  description = "2nd public subnet CIDR imported value from the root variables file"
}

variable "az-1" {
  description = "availability zones imported value from the root variables file"
}

variable "az-2" {
  description = "availability zones imported value from the root variables file"
}

variable "az-3" {
  description = "availability zones imported value from the root variables file"
}

variable "vpc_name" {
  description = "name of the vpc web server"
  type        = string
  default     = "metatrader_5_vpc"
}

variable "public_subnet_name_1" {
  description = "name of the 1st subnet for the vpc"
  type        = string
  default     = "metatrader_5_public_subnet_1"
}

variable "public_subnet_name_2" {
  description = "name of the 2nd  subnet for the vpc"
  type        = string
  default     = "metatrader_5_public_subnet_2"
}

variable "igw_name" {
  description = "name of the internet gateway for the vpc"
  type        = string
  default     = "metatrader_5_igw"
}

variable "rt_name" {
  description = "name of the route table for the vpc"
  type        = string
  default     = "metatrader_5_rt"
}

variable "rt_cidr" {
  description = "route table CIDR for the vpc"
  type        = string
  default     = "0.0.0.0/0"
}

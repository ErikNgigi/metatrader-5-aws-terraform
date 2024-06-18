output "vpc_cidr" {
  description = "Variable value output of the VPC CIDR"
  value       = var.vpc_cidr
}

output "public_subnet_cidr_1" {
  description = "Variable value output of the 1st public subnet CIDR block"
  value       = var.public_subnet_cidr_1
}

# output "public_subnet_cidr_2" {
#   description = "Variable value output of the 2nd public subnet CIDR block"
#   value       = var.public_subnet_cidr_2
# }

output "az-1" {
  description = "Variable value output of the listed availability zones"
  value       = var.az-1
}

output "az-2" {
  description = "Variable value output of the listed availability zones"
  value       = var.az-2
}

output "az-3" {
  description = "Variable value output of the listed availability zones"
  value       = var.az-3
}

output "metatrader_public_address" {
  description = "exported output value of the ec2 instance public ipv4 address"
  value = module.aws_instances.metatrader_5_public_ip
}

output "metatrader_public_dns" {
  description = "exported output value of the ec2 instance public ipv4 dns"
  value = module.aws_instances.metatrader_5_public_dns
}

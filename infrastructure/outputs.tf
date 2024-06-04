output "vpc_cidr" {
  description = "Variable value output of the VPC CIDR"
  value       = var.vpc_cidr
}

output "public_subnet_cidr_1" {
  description = "Variable value output of the 1st public subnet CIDR block"
  value       = var.public_subnet_cidr_1
}

output "public_subnet_cidr_2" {
  description = "Variable value output of the 2nd public subnet CIDR block"
  value       = var.public_subnet_cidr_2
}

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

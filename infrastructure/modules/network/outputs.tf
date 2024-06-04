output "vpc_id" {
  description = "details of the metatrader vpc"
  value       = aws_vpc.metatrader_5_vpc.id
}

output "public_subnet_1" {
  description = "details of the metatrader public subnet 1"
  value       = aws_subnet.metatrader_5_public_subnet_1.id
}

output "public_subnet_2" {
  description = "details of the metatrader public subnet 2"
  value       = aws_subnet.metatrader_5_public_subnet_2.id
}

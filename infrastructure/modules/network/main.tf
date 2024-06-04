# main vpc
resource "aws_vpc" "metatrader_5_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}

# public subnets
resource "aws_subnet" "metatrader_5_public_subnet_1" {
  vpc_id                  = aws_vpc.metatrader_5_vpc.id
  cidr_block              = var.public_cidr_subnet_1
  map_public_ip_on_launch = true
  availability_zone       = var.az-1

  tags = {
    Name = var.public_subnet_name_1
  }
}

# resource "aws_subnet" "metatrader_5_public_subnet_2" {
#   vpc_id                  = aws_vpc.metatrader_5_vpc.id
#   cidr_block              = var.public_cidr_subnet_2
#   map_public_ip_on_launch = true
#   availability_zone       = var.az-2

#   tags = {
#     Name = var.public_subnet_name_2
#   }
# }

# internet gateway
resource "aws_internet_gateway" "metatrader_5_igw" {
  vpc_id = aws_vpc.metatrader_5_vpc.id

  tags = {
    Name = var.igw_name
  }
}

# route table and associations
resource "aws_route_table" "metatrader_5_rt" {
  vpc_id = aws_vpc.metatrader_5_vpc.id
  route {
    cidr_block = var.rt_cidr
    gateway_id = aws_internet_gateway.metatrader_5_igw.id
  }

  tags = {
    Name = var.rt_name
  }
}

resource "aws_route_table_association" "metatrader_5_rt_as_1" {
  subnet_id      = aws_subnet.metatrader_5_public_subnet_1.id
  route_table_id = aws_route_table.metatrader_5_rt.id
}

# resource "aws_route_table_association" "metatrader_5_rt_as_2" {
#   subnet_id      = aws_subnet.metatrader_5_public_subnet_2.id
#   route_table_id = aws_route_table.metatrader_5_rt.id
# }

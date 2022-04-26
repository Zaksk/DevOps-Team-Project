resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "prod-subnet"
  }
}  

resource "aws_subnet" "subnet_1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}

resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.first-vpc.id

  tags = {
    Name = "igw1"
  }
}

resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.first-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }

  tags = {
    Name = "rt1"
  }
}

resource "aws_route_table_association" "rtsa1" {
  subnet_id      = aws_subnet.subnet_1.id
  route_table_id = aws_route_table.rt1.id
}
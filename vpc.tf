<<<<<<< HEAD
provider "aws"  {
  region = "us-east-1"
}

variable "cidr_block" {
    type    = string
    default = "10.0.0.0/16"
}
resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key-pair"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_vpc" "my_aws_vpc" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "my_aws_subnet" {
  vpc_id            = aws_vpc.my_aws_vpc.id
  cidr_block      = "10.0.0.0/24"
  availability_zone = "us-west-1a"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "my_aws_internet_gateway" {
  vpc_id = aws_vpc.my_aws_vpc.id
}

resource "aws_route_table" "my_aws_route_table" {
  vpc_id = aws_vpc.my_aws_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_aws_internet_gateway.id
  }
}

resource "aws_route_table_association" "my_aws_route_table_association" {
  subnet_id      = aws_subnet.my_aws_subnet.id
  route_table_id = aws_route_table.my_aws_route_table.id
}
=======
provider "aws"  {
  region = "us-east-1"
}

variable "cidr_block" {
    type    = string
    default = "10.0.0.0/16"
}
resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key-pair"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_vpc" "my_aws_vpc" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "my_aws_subnet" {
  vpc_id            = aws_vpc.my_aws_vpc.id
  cidr_block      = "10.0.0.0/24"
  availability_zone = "us-west-1a"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "my_aws_internet_gateway" {
  vpc_id = aws_vpc.my_aws_vpc.id
}

resource "aws_route_table" "my_aws_route_table" {
  vpc_id = aws_vpc.my_aws_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_aws_internet_gateway.id
  }
}

resource "aws_route_table_association" "my_aws_route_table_association" {
  subnet_id      = aws_subnet.my_aws_subnet.id
  route_table_id = aws_route_table.my_aws_route_table.id
}

>>>>>>> b1c089f (file added)

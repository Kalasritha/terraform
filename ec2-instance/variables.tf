variable "region" {
  default = "us-east-1a"
}

variable "az" {
  default = "us-east-1b"
}

variable "ami" {
  default = "ami-0dee22c13ea7a9a67"   # Amazon Linux 2 (Mumbai)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Your EC2 key pair name"
}


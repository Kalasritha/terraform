provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-00ca32bbc84273381"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0c8c698488c0c89c8"
    key_name = "Srithu"
}

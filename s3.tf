provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "mydemo" {
  bucket = "my-bucket-name-004"

  tags = {
    Name        = "default"
    Environment = "default"
  }
}

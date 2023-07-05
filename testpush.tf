provider "aws" {
  region = "us-west-2"
}
resource "aws_s3_bucket" "dev" {
  bucket = "unique_bucket_name_as_a_purpose_of_demo_42"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "deham6demo"{
    ami = "ami-0fa167c2af1ea0840"
    instance_type = "t2.micro"
    key_name = "deham630062023"
    vpc_security_group_ids = ["sg-0e45a52719eb759fd"]
    subnet_id = "subnet-0bb7d846cd02da113"
    tags = {
        Name = "deham6demos"
    }
}

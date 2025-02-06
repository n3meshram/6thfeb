provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c50b6f7dc3701ddd" # Replace with your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

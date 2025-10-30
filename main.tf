provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "three" {
  count         = 2
  ami           = "ami-0bdd88bd06d16ba03"
  instance_type = "t3.micro"

  tags = {
    Name = "test-server"
  }
}

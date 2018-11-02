provider "aws" {
  access_key = "AKIAI5TTBSBTNPMNREMA"
  secret_key = "db9PQ4I92Z5nr/yj1oTJ8imSFLren2s0KxFU3Ekx"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-6871a115"
  instance_type = "t2.micro"
  key_name = "deploy"
}


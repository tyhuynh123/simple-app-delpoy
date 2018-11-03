provider "aws" {
  access_key = "AKIAJGQMEI45D3MYLFDQ"
  secret_key = "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"
  region     = "us-east-1"
}


variable "instance_type" { default="t2.micro"}
variable "ami" { default="ami-6871a115" }

resource "aws_instance" "ec2" {
  count         = 3 
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "deploy"
}


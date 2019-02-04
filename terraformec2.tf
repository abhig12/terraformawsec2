provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance" {
  ami = "ami-04ea996e7a3e7ad6b"
  instance_type = "t2.micro"
  key_name = "keypairubuntu"
  security_groups = ["launch-wizard-1"]
  tags = {
    Name = "terraform-ec2"
  }
}
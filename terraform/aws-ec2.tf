resource "aws_instance" "krish-EC2" {
#region = "us-east-2"
ami = "ami-0a606d8395a538502"
instance_type = "t2.micro"
key_name = "ec2frm-packami-keypair"
tags = {Name = "Krish-Terraform-EC2"}
}


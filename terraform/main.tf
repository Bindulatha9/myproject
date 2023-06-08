provider "aws" {
region = "us-west-1"
access_key = ""
secret_key = "s"
}
resource "aws_instance" "key" {
ami="ami"
instance_type= "t2.micro"
key_name= "sshkey"
vpc_security_group_ids=[aws_security_group.demo_sg.id]
tags={
Name="PROD"
Environment="PROD"
}
}

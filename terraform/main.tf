provider "aws" {
region = "us-west-1"
access_key = "AKIAY2H7S4EHHPCD3QG3"
secret_key = "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"
}
resource "aws_instance" "key" {
ami="ami-04669a22aad391419"
instance_type= "t2.micro"
key_name= "sshkey"
vpc_security_group_ids=[aws_security_group.demo_sg.id]
tags={
Name="PROD"
Environment="PROD"
}
}

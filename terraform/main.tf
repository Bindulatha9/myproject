provider "aws" {
region = "us-west-1"
access_key = "AKIAY2H7S4EHF7GTZY6I"
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

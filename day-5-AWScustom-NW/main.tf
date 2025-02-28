#Creation of server
resource "aws_instance" "cust" {
ami = "ami-0d682f26195e9ec0f"
instance_type = "t2.nano"
key_name = "apple"
availability_zone = "ap-south-1a"
subnet_id = aws_subnet.cust.id
vpc_security_group_ids = [aws_security_group.allow_tls.id]
tags = {
  Name = "cust-ec2"
} 
}
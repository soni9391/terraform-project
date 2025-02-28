resource "aws_instance" "Hello" {
  ami="ami-0d682f26195e9ec0f"
  instance_type = "t2.micro"
  key_name = "apple"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "dev"
  } 
}
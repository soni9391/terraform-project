resource "aws_instance" "this" {
  ami           =" ami-0d682f26195e9ec0f"  # Replace with a valid AMI
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}


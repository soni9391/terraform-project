resource "aws_instance" "asdf" {
    ami = "ami-0d682f26195e9ec0f"

    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "apple"
    tags = {
        name = "asdf"
    }
    
  }


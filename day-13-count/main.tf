provider "aws" {
  
}

resource "aws_instance" "name"  {
    ami = "ami-0d682f26195e9ec0f"
    instance_type = "t2.micro"
    key_name = "apple"
    availability_zone = "ap-south-1a"
    count = 2
   tags = {
     Name = "webec2 $ {count.index}"
     
    }
}






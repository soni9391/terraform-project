variable "ami" {
  type    = string
  default = "ami-0d682f26195e9ec0f"
}

variable "env" {
  type    = list (string)
  default = ["dev","test","prod"]
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

  

resource "aws_instance" "env" {
  ami           = var.ami
  instance_type = var.instance_type
  for_each      = toset(var.env)
  
  #  count = length(var.env)
  tags = {
    Name = each.value # for a set, each.value and each.key is the same
  }
}
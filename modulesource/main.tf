module "test" {
    source = "../modules/ec2"
    env_name = "test"
    ami = "ami-05b10e08d247fb92"
    instance_type = "t2.micro"
  
}
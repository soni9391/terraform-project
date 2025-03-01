resource "aws_db_instance" "default" {
  allocated_storage       = 10
  db_name                 = "mydb"
  engine                  = "mysql"
  engine_version          = "8.0"
  multi_az = true
  instance_class          = "db.t3.micro"
  username                = "admin"
  password                = "admin123"
  parameter_group_name    = "default.mysql8.0"
  skip_final_snapshot = true
  
}
resource "aws_db_subnet_group" "sub-grp" {
  name       = "custom_subnets"
  subnet_ids = ["subnet-0ee4fbad89fb4ad17","subnet-074c8e5d4807d9a44","subnet-0bbfb8036cb326cec"]
  tags = {
    Name = "My DB subnet group"
  }
}

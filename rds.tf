resource "aws_db_instance" "app_rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  port                 =  5000
  username             = "terraform"
  password             = "12345678"
  db_subnet_group_name = "${module.network.vpc_subnets_group_name}"
  vpc_security_group_ids = ["${module.network.db_sg_id}"]
  skip_final_snapshot  = true
}
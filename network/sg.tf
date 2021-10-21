resource "aws_security_group" "public_sg" {
  name        = "public_sg"
  description = "Allow SSH from any where"
  vpc_id      = "${aws_vpc.myvpc.id}"

  ingress = [
    {
      description      = "SSH"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]
}

resource "aws_security_group" "private_sg" {
  name        = "private_sg"
  description = "Allow trafic from vpc only"
  vpc_id      = "${aws_vpc.myvpc.id}"

  ingress = [
    {
      description      = "SSH"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["${aws_vpc.myvpc.cidr_block}"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    },
    {
      description      = "port3000"
      from_port        = 3000
      to_port          = 3000
      protocol         = "tcp"
      cidr_blocks      = ["${aws_vpc.myvpc.cidr_block}"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]
}

resource "aws_security_group" "db_sg" {
  name        = "db_sg"
  description = "Allow connectivity from VPC"
  vpc_id      = "${aws_vpc.myvpc.id}"

  ingress = [
    {
      description      = "Allow connectivity from VPC"
      from_port        = 5000
      to_port          = 5000
      protocol         = "tcp"
      cidr_blocks      = ["${aws_vpc.myvpc.cidr_block}"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self = false
    }
  ]
}
resource "aws_subnet" "public1" {
  vpc_id                  = "${aws_vpc.myvpc.id}"
  cidr_block              = "${var.public_route_cidr}"
  map_public_ip_on_launch = "true"
}

resource "aws_subnet" "private1" {
  vpc_id                  = "${aws_vpc.myvpc.id}"
  cidr_block              = "${var.private_route_cidr}"
}


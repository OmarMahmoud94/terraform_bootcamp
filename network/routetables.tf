resource "aws_route_table" "public_rt" {
  vpc_id = "${aws_vpc.myvpc.id}"
}

resource "aws_route" "r" {
  route_table_id            = "${aws_route_table.public_rt.id}"
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = "${aws_internet_gateway.myigw.id}"
}

resource "aws_route_table_association" "rt_subnet" {
  subnet_id      = "${aws_subnet.public1.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}

resource "aws_route_table" "private_rt" {
  vpc_id = "${aws_vpc.myvpc.id}"
}



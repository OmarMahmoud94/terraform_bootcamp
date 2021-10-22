resource "aws_subnet" "public1" {
  vpc_id                  =  aws_vpc.myvpc.id 
  cidr_block              =  var.public_route_cidr 
  map_public_ip_on_launch = "true"
}

resource "aws_subnet" "private1" {
  vpc_id                  =  aws_vpc.myvpc.id
  cidr_block              =  var.private_route_cidr 
}

resource "aws_db_subnet_group" "myvpc_subnets" {
  subnet_ids = [aws_subnet.private1.id, aws_subnet.public1.id]
}

resource "aws_elasticache_subnet_group" "ecash_subnets" {
  name       = "tf-test-cache-subnet"
  subnet_ids = [aws_subnet.private1.id, aws_subnet.public1.id]
}
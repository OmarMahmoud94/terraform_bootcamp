module "network" {
  source = "./network"
  vpc_cidr = "${var.my_vpc_cidr}"
  public_route_cidr = "${var.my_public_route_cidr}"
  private_route_cidr = "${var.my_private_route_cidr}"
}
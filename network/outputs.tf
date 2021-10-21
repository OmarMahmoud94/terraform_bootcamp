output "pub_subnet_id" {
  value = "${aws_subnet.public1.id}"
}

output "private_subnet_id" {
  value = "${aws_subnet.private1.id}"
}

output "pub_sg_id" {
  value = "${aws_security_group.public_sg.id}"  
}

output "private_sg_id" {
  value = "${aws_security_group.private_sg.id}"  
}

output "db_sg_id" {
  value = "${aws_security_group.db_sg.id}"  
}

output "vpc_subnets_group_name" {
  value = "${aws_db_subnet_group.myvpc_subnets.id}"  
}

output "pub_net_interface_id" {
  value = "${aws_network_interface.my_pub_net_interface.id}"  
}

output "private_net_interface_id" {
  value = "${aws_network_interface.my_private_net_interface.id}"  
}
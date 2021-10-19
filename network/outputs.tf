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
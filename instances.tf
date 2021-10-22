data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
resource "aws_instance" "bastion" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t2.micro"
  key_name = "${var.ssh_key}"  
  
  network_interface {
    network_interface_id = module.network.pub_net_interface1_id
    device_index         = 0
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip}" 
  }

  depends_on = [module.network]
}

resource "aws_instance" "application" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t2.micro"
  key_name = var.ssh_key

  network_interface {
    network_interface_id = module.network.pub_net_interface2_id
    device_index         = 0
  }

  depends_on = [module.network]
}
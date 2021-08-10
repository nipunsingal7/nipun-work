resource "aws_subnet" "subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr
  assign_ipv6_address_on_creation=var.ipv6_assignment_on_creation
  availability_zone=var.azs
  map_public_ip_on_launch=var.public_ip_on_launch
  
  tags = {
    Name = "${var.subnetname}"
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.route_cidr_block
    gateway_id = var.gatewayid
  }


  tags = {
    Name = "${var.route_table_name}"
  }
}


resource "aws_route_table_association" "route_association" {
  subnet_id      = var.subnetid
  route_table_id = aws_route_table.route_table.id
}

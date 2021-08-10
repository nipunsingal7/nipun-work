resource "aws_security_group" "security_group" {
  name        = var.groupname
  vpc_id      = var.vpcid

  ingress {
    from_port        = var.from_port_ingress
    to_port          = var.to_port_ingress
    protocol         = var.protocol_ingress
    cidr_blocks      = var.cidr_blocks_ingress
  }

  egress {
    from_port        = var.from_port_egress
    to_port          = var.to_port_egress
    protocol         = var.protocol_egress
    cidr_blocks      = var.cidr_blocks_egress
  }

  tags = {
    Name = "${var.grouptagname}"
  }
}

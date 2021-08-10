resource "aws_internet_gateway" "gateway" {
  vpc_id = var.vpcid

  tags = {
    Name = "${var.gwname}"
  }
}


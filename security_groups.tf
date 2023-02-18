resource "aws_security_group" "api_gateway_sg" {
  name        = "allow_in_api_gateway"
  description = "Allow inbound traffic from API Gateway"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    security_groups = var.inbound_security_group_ids
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = "0.0.0.0/0"
  }
}

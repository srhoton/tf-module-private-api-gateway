resource "aws_vpc_endpoint" "api_gateway" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${data.aws_region}.execute-api"
  subnet_ids   = var.private_subnet_ids
  vpc_endpoint_type = "Interface"
  security_group_ids = [aws_security_group.api_gateway_sg.id]
}

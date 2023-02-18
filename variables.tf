variable "private_subnet_ids" {
  description = "Private subnet IDs"
  type        = list(string)
  default     = []
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = ""
}

variable "inbound_security_group_ids" {
  description = "Inbound security group IDs to allow access to the api gateway"
  type        = list(string)
  default     = []
}

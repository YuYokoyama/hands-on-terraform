# ---------------------------------
# VPC
# ---------------------------------
resource "aws_vpc" "vpc" {
  cidr_block                       = "192.168.0.0/20"
  instance_tenancy                 = "default" # 専用・共有ハードウェアを死闘するか否か
  enable_dns_support               = true
  enable_dns_hostnames             = true  # DNSによる名前解決を有効化するか
  assign_generated_ipv6_cidr_block = false # ipv6を有効化するか

  tags = {
    Name        = "${var.project}-${var.environment}-vpc"
    Project     = var.project
    environment = var.environment
  }
}

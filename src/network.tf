# ---------------------------------
# VPC
# ---------------------------------
resource "aws_vpc" "vpc" {
  cidr_block                       = "192.168.0.0/20"
  instance_tenancy                 = "default" # 専用・共有ハードウェアを使用するか否か
  enable_dns_support               = true
  enable_dns_hostnames             = true  # DNSによる名前解決を有効化するか
  assign_generated_ipv6_cidr_block = false # ipv6を有効化するか

  tags = {
    Name        = "${var.project}-${var.environment}-vpc"
    Project     = var.project
    Environment = var.environment
  }
}

# ---------------------------------
# Subnet
# ---------------------------------
resource "aws_subnet" "public_subnet_1a" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "ap-northeast-1a"
  cidr_block              = "192.168.1.0/24"
  map_public_ip_on_launch = true # パブリックip自動割り当て

  tags = {
    Name        = "${var.project}-${var.environment}-public-subnet-1a"
    Project     = var.project
    Environment = var.environment
    Type        = "public"
  }
}

resource "aws_subnet" "public_subnet_1c" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "ap-northeast-1c"
  cidr_block              = "192.168.2.0/24"
  map_public_ip_on_launch = true # パブリックip自動割り当て

  tags = {
    Name        = "${var.project}-${var.environment}-public-subnet-1c"
    Project     = var.project
    Environment = var.environment
    Type        = "public"
  }
}

resource "aws_subnet" "private_subnet_1a" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "ap-northeast-1a"
  cidr_block              = "192.168.3.0/24"
  map_public_ip_on_launch = false # パブリックip自動割り当て

  tags = {
    Name        = "${var.project}-${var.environment}-private-subnet-1a"
    Project     = var.project
    Environment = var.environment
    Type        = "private"
  }
}

resource "aws_subnet" "private_subnet_1c" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "ap-northeast-1c"
  cidr_block              = "192.168.4.0/24"
  map_public_ip_on_launch = false # パブリックip自動割り当て

  tags = {
    Name        = "${var.project}-${var.environment}-private-subnet-1c"
    Project     = var.project
    Environment = var.environment
    Type        = "private"
  }
}

#Public Subnet
resource "aws_subnet" "terra-vpc-public1-ap-northeast-2a" {
  vpc_id                  = "${aws_vpc.dh-terra-vpc.id}"
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "terra-vpc-public1-ap-northeast-2"
  }
}

resource "aws_subnet" "terra-vpc-public2-ap-northeast-2c" {
  vpc_id                  = "${aws_vpc.dh-terra-vpc.id}"
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "terra-vpc-public2-ap-northeast-2c"
  }
}

#Private Subnet
resource "aws_subnet" "terra-vpc-private1-ap-northeast-2a" {
  vpc_id                  = "${aws_vpc.dh-terra-vpc.id}"
  cidr_block              = "10.0.16.0/24"
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = false

  tags = {
    Name = "db-terra-vpc-private1-ap-northeast-2a"
  }
}

resource "aws_subnet" "terra-vpc-private2-ap-northeast-2a" {
  vpc_id                  = "${aws_vpc.dh-terra-vpc.id}"
  cidr_block              = "10.0.32.0/24"
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = false

  tags = {
    Name = "terra-vpc-private2-ap-northeast-2a"
  }
}

resource "aws_subnet" "terra-vpc-private3-ap-northeast-2c" {
  vpc_id                  = "${aws_vpc.dh-terra-vpc.id}"
  cidr_block              = "10.0.64.0/24"
  availability_zone       = "ap-northeast-2c"
  map_public_ip_on_launch = false

  tags = {
    Name = "db-terra-vpc-private3-ap-northeast-2c"
  }
}

resource "aws_subnet" "terra-vpc-private4-ap-northeast-2c" {
  vpc_id                  = "${aws_vpc.dh-terra-vpc.id}"
  cidr_block              = "10.0.128.0/24"
  availability_zone       = "ap-northeast-2c"
  map_public_ip_on_launch = false

  tags = {
    Name = "terra-vpc-private4-ap-northeast-2c"
  }
}
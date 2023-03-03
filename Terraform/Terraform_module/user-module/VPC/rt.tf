# public routing
resource "aws_route_table" "dh-terra-public" {
  vpc_id = "${aws_vpc.dh-terra-vpc.id}" #VPC 별칭 입력
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dh-terra-vpc-igw.id #Internet Gateway 별칭 입력
  }
  tags = { Name = "dh-terra-public" } #태그 설정
}

#private routing
resource "aws_route_table" "dh-terra-private1" {
  vpc_id = "${aws_vpc.dh-terra-vpc.id}" #VPC 별칭 입력
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }
  tags = { Name = "dh-terra-private1-for-db" } #태그 설정
}

resource "aws_route_table" "dh-terra-private2" {
  vpc_id = "${aws_vpc.dh-terra-vpc.id}" #VPC 별칭 입력
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }
  tags = { Name = "dh-terra-private2" } #태그 설정
}

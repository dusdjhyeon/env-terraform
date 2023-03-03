resource "aws_route_table_association" "dh-terra-public-a" {
  subnet_id      = aws_subnet.terra-vpc-public1-ap-northeast-2a.id
  route_table_id = aws_route_table.dh-terra-public.id
}

resource "aws_route_table_association" "terra-routing-public-c" {
  subnet_id      = aws_subnet.terra-vpc-public2-ap-northeast-2c.id
  route_table_id = aws_route_table.dh-terra-public.id
}

#private
resource "aws_route_table_association" "db-terra-routing-private1-a" {
  subnet_id      = aws_subnet.terra-vpc-private1-ap-northeast-2a.id
  route_table_id = aws_route_table.dh-terra-private1.id
}

resource "aws_route_table_association" "db-terra-routing-private1-c" {
  subnet_id      = aws_subnet.terra-vpc-private3-ap-northeast-2c.id
  route_table_id = aws_route_table.dh-terra-private1.id
}

resource "aws_route_table_association" "terra-routing-private2-a" {
  subnet_id      = aws_subnet.terra-vpc-private2-ap-northeast-2a.id
  route_table_id = aws_route_table.dh-terra-private2.id
}

resource "aws_route_table_association" "terra-routing-private2-c" {
  subnet_id      = aws_subnet.terra-vpc-private4-ap-northeast-2c.id
  route_table_id = aws_route_table.dh-terra-private2.id
}
resource "aws_nat_gateway" "nat" {
    allocation_id = "${aws_eip.iac_nat_eip.id}"
    subnet_id = "${aws_subnet.terra-vpc-public1-ap-northeast-2a.id}"
    depends_on = [aws_internet_gateway.dh-terra-vpc-igw]
}

resource "aws_eip" "iac_nat_eip" {
    vpc = true

    lifecycle {
        create_before_destroy = true
    }
}
output "vpc_id" {
    value = "${aws_vpc.dh-terra-vpc.id}"
}

output "ap-northeast-2a" {
    value = "${aws_subnet.terra-vpc-public1-ap-northeast-2a.id}"
}

output "ap-northeast-2c" {
    value = "${aws_subnet.terra-vpc-public2-ap-northeast-2c.id}"
}

output "security_group" {
    value = "${aws_security_group.dh-alb-sg.id}"
}

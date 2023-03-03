resource "aws_internet_gateway" "dh-terra-vpc-igw" {
    vpc_id = "${aws_vpc.dh-terra-vpc.id}"

    tags ={
        Name = "dh-terra-vpc-igw"
    }
}
#security group

resource "aws_security_group" "dh-alb-sg" {
    vpc_id      = "${aws_vpc.dh-terra-vpc.id}"
    name        = "dh-alb-sg" 
    description = "alb sg for ecs"
    depends_on  = [aws_internet_gateway.dh-terra-vpc-igw]
    
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        ipv6_cidr_blocks = ["::/0"]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "dh-ecs-sg" {
    vpc_id      = "${aws_vpc.dh-terra-vpc.id}"
    name        = "dh-ecs-sg" 
    description = "ecs sg"
    depends_on  = [aws_internet_gateway.dh-terra-vpc-igw]
    
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {//alb 보안그룹 허용
        from_port   = 3306
        to_port     = 3306
        protocol    = "tcp"
        security_groups = [aws_security_group.dh-alb-sg.id]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "dh-aurora-sg" {
    vpc_id      = "${aws_vpc.dh-terra-vpc.id}"
    name        = "dh-aurora-sg" 
    description = "aurora sg"

    ingress {
        from_port   = 3306
        to_port     = 3306
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "dh-redis-sg" {
    vpc_id      = "${aws_vpc.dh-terra-vpc.id}"
    name        = "dh-redis-sg" 
    description = "redis sg"
  
    ingress {
        from_port   = 6379
        to_port     = 6379
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
  }
}
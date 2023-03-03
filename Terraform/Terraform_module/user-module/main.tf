/*
resource "aws_s3_bucket" "user_bucket" {
  bucket = var.user-bucket-name
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = var.game-score-dynamo-name
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }
}
*/

# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws" #사용할 Module 지정

#   name = "dh-terra-vpc"                              #VPC 이름 지정
#   cidr = "10.0.0.0/16"                      #IPv4 CIDR

#   azs             = ["ap-northeast-2a", "ap-northeast-2c"] #가용영역 지정
#   public_subnets  = ["10.0.0.0/24", "10.0.1.0/24"]  #공개 서브넷
#   private_subnets = ["10.0.16.0/24", "10.0.32.0/24"] #비공개 서브넷
#   database_subnets = ["10.0.64.0/24", "10.0.128.0/24"] #데이터베이스 서브넷
 
#   enable_nat_gateway = true			#NAT Gateway 활성
#   create_igw = true 
  
#   create_database_subnet_group            = true    #RDS용 서브넷 구성
#   create_database_subnet_route_table      = true    #RDS용 서브넷의 라우팅 테이블 구성

#   tags = {
#     Terraform = "true"
#     Environment = "dev"
#   }

#   #VPN 엔드포인트
# }
resource "aws_alb" "dh-terra-alb" {
    idle_timeout    = 60
    internal        = false
    name            = "dh-terra-alb"
    load_balancer_type = "application"
    security_groups = [module.vpc.security_group]
    subnets         = [module.vpc.ap-northeast-2a, module.vpc.ap-northeast-2c]
    depends_on = [aws_alb_target_group.dh-terra-tg]
    enable_deletion_protection = false

}


#타겟 그룹 생성
resource "aws_alb_target_group" "dh-terra-tg" {
  name     = "dh-terra-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id = "${module.vpc.vpc_id}"
  health_check {
  interval            = 30
  path                = "/index.html"
  healthy_threshold   = 2
  unhealthy_threshold = 2
  }
}
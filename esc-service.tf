
module "ecsSerCWlb" {
  
  source  = "terraform-aws-modules/ecs/aws"
  version = "1.1.6"
  common             = "${local.common}"
  is_enabled         = 1
  ecs_cluster_id     = ""
  autoscaling_enabled       = "true"
  ecs_autoscaling_iam_role_arn = ""
  ecs_cluster_name          = "ecs-poc-cluster"
  function           = "my_function"
  vpcid              = "vpc-0bd8f4a923a0626de"
  td_role_arn        = ""
  td_exec_role_arn   = ""
  region             = "us-east-1"
  td_logdriver       = "td_logdriver"
  td_name            = "name_ecsSerCWlb"
  lb_enabled         = "1"
  alb_listener_arn   = "arn:aws:elasticloadbalancing:us-east-1:003100980647:listener-rule/app/my-ecs-demo/b3dd3eed6c683151/0d883f6a77003aeb/ce72e6b489da75bf"
  lb_rule_priority   = "1"
  td_container_port  = 8080
  containerDefinition = "[${data.template_file.ecs_container_definition_awslogs_CWlb.rendered}]"
  ecs_service_desired_count = "1"

}
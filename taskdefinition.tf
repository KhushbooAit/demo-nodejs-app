data "template_file" "ecs_container_definition_awslogs_CWlb" {
  template = "${file("${path.module}/../Templates/app_td.json")}"

vars = {
  logDriver       = "td_logdriver"
  awslogs-group   = ""
  awslogs-region  = ""
  protocol        = "tcp"
  region          = "us-east-1"
  hostPort1       = "80"
  containerPort1  = "8080"
  Memory          = "400"
  image           = "003100980647.dkr.ecr.us-east-1.amazonaws.com/nginx"
  name            = ""
}

}

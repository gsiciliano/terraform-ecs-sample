# output nginx public ip
output "nginx_dns_lb" {
  description = "DNS load balancer"
  value = aws_alb.main.dns_name
}

# output ecs cluster public ip
output "ecs_cluster_runner_ip" {
  description = "External IP of ECS Cluster"
  value = [aws_instance.ecs-cluster-runner.*.public_ip]
}


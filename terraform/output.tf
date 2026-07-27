output "ecr_repository_url" {
  description = "Push Docker images to this URL"
  value       = aws_ecr_repository.app.repository_url
}
 
output "alb_dns_name" {
  description = "Visit this URL in your browser"
  value       = "http://${aws_lb.main.dns_name}"
}
 
output "ecs_cluster_name" {
  description = "Needed for the GitHub Actions workflow"
  value       = aws_ecs_cluster.main.name
}
 
output "ecs_service_name" {
  description = "Needed for the GitHub Actions workflow"
  value       = aws_ecs_service.app.name
}
 
output "ecs_task_family" {
  description = "Needed for the GitHub Actions workflow"
  value       = "${var.project_name}-task"
}

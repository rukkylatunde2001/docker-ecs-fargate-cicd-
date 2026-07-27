variable "aws_region" {
  default = "us-east-1"
}
 
variable "project_name" {
  default = "rukayat-app"
}
 
variable "app_port" {
  description = "Port the Flask app listens on inside the container"
  default     = 5000
}

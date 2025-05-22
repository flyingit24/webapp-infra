output "web_server_public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.web.public_ip
}

output "db_endpoint" {
  description = "Endpoint of the RDS database"
  value       = aws_db_instance.web_db.endpoint
}
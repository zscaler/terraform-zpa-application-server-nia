/*
output "id" {
  description = "The Application Server identifier (either created or pre-existing)."
  value       = local.consul_services != null ? local.consul_services.id : null
}

output "application_server" {
  description = "The entire Application Server object (either created or pre-existing)."
  value       = local.consul_services
}
*/
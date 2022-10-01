/*
################################################################################
# Application Server Outputs
################################################################################
output "zpa_application_server_id" {
  description = "The ZPA Application Server ID"
  value       = zpa_application_server.this != null ? zpa_application_server.this.id : null
}

output "zpa_application_server_name" {
  description = "The ZPA Application Server Name"
  value       = zpa_application_server.this.name
}

################################################################################
# Server Group Outputs
################################################################################
output "zpa_server_group_id" {
  description = "The ZPA Server Group ID"
  value       = zpa_server_group.this.id
}

output "zpa_server_group_name" {
  description = "The ZPA Server Group Name"
  value       = zpa_server_group.this.name
}
*/
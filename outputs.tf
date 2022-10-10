################################################################################
# Application Server Outputs
################################################################################
output "zpa_application_server" {
  description = "The ZPA Application Server Name"
  value       = zpa_application_server.this
}


################################################################################
# Server Group Outputs
################################################################################
output "zpa_server_group" {
  description = "The ZPA Server Group ID"
  value       = zpa_server_group.this
}
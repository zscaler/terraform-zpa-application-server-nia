output "application_server" {
  description = "Map of application servers created within the module."
  value       = { for k, v in module.zpa_application_server_module : k => v.application_server }
}

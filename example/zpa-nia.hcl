
# Global Config Options
log_level = "INFO"
port = 8558
working_dir = "sync-tasks"

syslog {
  enabled = false
}

buffer_period {
  enabled = true
  min = "5s"
  max = "20s"
}

# Vault Config Options (Optional)
# Only required if you are using Vault to retrieve ZPA API Credentials
vault {}

# Consul Config Options
consul {
  address = "10.0.31.151:8500"
}

# Terraform Driver Options
driver "terraform" {
  backend "local" {}
  log = true
  required_providers {
    zpa = {
      source = "zscaler/zpa"
    }
  }
}

terraform_provider "zpa" {
  # zpa_client_id = "{{ with secret \"zscaler/zpacloud\" }}{{ .Data.data.client_id }}{{ end }}"
  # zpa_client_secret = "{{ with secret \"zscaler/zpacloud\" }}{{ .Data.data.client_secret }}{{ end }}"
  # zpa_customer_id = "{{ with secret \"zscaler/zpacloud\" }}{{ .Data.data.customer_id }}{{ end }}"
}


task {
  name = "zpa_application_server_update"
  description = "Application Segment based on service definition"
  module = "../"
  providers = ["zpa"]

  condition "services" {
    names = ["nginx","web","api"]
  }
}


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
# vault {}

# Consul Config Options
consul {
  address = "10.0.31.151:8500"
}

# Terraform Driver Options
driver "terraform" {
  log = true
  required_providers {
    zpa = {
      source = "zscaler/zpa"
    }
  }
}

/*
################################################################################
# Required when using HashiCorp Vault to Store ZPA API Keys
################################################################################
terraform_provider "zpa" {
  zpa_client_id = "{{ with secret \"zscaler/zpacloud\" }}{{ .Data.data.client_id }}{{ end }}"
  zpa_client_secret = "{{ with secret \"zscaler/zpacloud\" }}{{ .Data.data.client_secret }}{{ end }}"
  zpa_customer_id = "{{ with secret \"zscaler/zpacloud\" }}{{ .Data.data.customer_id }}{{ end }}"
}
*/

terraform_provider "zpa" {
  zpa_client_id = ""
  zpa_client_secret = ""
  zpa_customer_id = ""
}


task {
  name = "zpa_application_server_update"
  description = "Automate Application Server Domain based on service definition"
  module = "github.com/zscaler/com/terraform-zpa-application-server"
  providers = ["zpa"]

  condition "services" {
    names = ["nginx","web","api"]
  }
  variable_files = ["./terraform.tfvars"]
}

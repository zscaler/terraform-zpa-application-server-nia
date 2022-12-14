terraform {
  required_providers {
    zpa = {
      source  = "zscaler/zpa"
      version = ">=2.5.2"
    }
  }
  required_version = ">= 0.13"
}

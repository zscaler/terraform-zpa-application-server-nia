# example

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_zpa"></a> [zpa](#requirement\_zpa) | >=2.3.2 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_zpa_application_server_module"></a> [zpa\_application\_server\_module](#module\_zpa\_application\_server\_module) | ../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_connector_group_city_country"></a> [app\_connector\_group\_city\_country](#input\_app\_connector\_group\_city\_country) | Code of the Country where the app connector is located i.e US or CA | `string` | `"San Jose, US"` | no |
| <a name="input_app_connector_group_country_code"></a> [app\_connector\_group\_country\_code](#input\_app\_connector\_group\_country\_code) | Code of the Country where the app connector is located i.e US or CA | `string` | `"US"` | no |
| <a name="input_app_connector_group_description"></a> [app\_connector\_group\_description](#input\_app\_connector\_group\_description) | Description of the App Connector Group. | `string` | `"AppConnectorGroup"` | no |
| <a name="input_app_connector_group_dns_query_type"></a> [app\_connector\_group\_dns\_query\_type](#input\_app\_connector\_group\_dns\_query\_type) | ICMP Access Type for the application segment created by Consul-Terraform-Sync. | `string` | `"IPV4_IPV6"` | no |
| <a name="input_app_connector_group_enabled"></a> [app\_connector\_group\_enabled](#input\_app\_connector\_group\_enabled) | Whether this App Connector Group is enabled or not. | `bool` | `true` | no |
| <a name="input_app_connector_group_latitude"></a> [app\_connector\_group\_latitude](#input\_app\_connector\_group\_latitude) | Whether this App Connector Group is enabled or not. | `string` | `"37.3382082"` | no |
| <a name="input_app_connector_group_location"></a> [app\_connector\_group\_location](#input\_app\_connector\_group\_location) | Location of the App Connector Group. | `string` | `"San Jose, CA, USA"` | no |
| <a name="input_app_connector_group_longitude"></a> [app\_connector\_group\_longitude](#input\_app\_connector\_group\_longitude) | Whether this App Connector Group is enabled or not. | `string` | `"-121.8863286"` | no |
| <a name="input_app_connector_group_name"></a> [app\_connector\_group\_name](#input\_app\_connector\_group\_name) | Name of the App Connector Group. | `string` | `"AppConnectorGroup"` | no |
| <a name="input_app_connector_group_override_version_profile"></a> [app\_connector\_group\_override\_version\_profile](#input\_app\_connector\_group\_override\_version\_profile) | Whether the default version profile of the App Connector Group is applied or overridden. | `bool` | `true` | no |
| <a name="input_app_connector_group_upgrade_day"></a> [app\_connector\_group\_upgrade\_day](#input\_app\_connector\_group\_upgrade\_day) | App Connectors in this group will attempt to update to a newer version of the software during this specified day. | `string` | `"SUNDAY"` | no |
| <a name="input_app_connector_group_upgrade_time_in_secs"></a> [app\_connector\_group\_upgrade\_time\_in\_secs](#input\_app\_connector\_group\_upgrade\_time\_in\_secs) | App Connectors in this group will attempt to update to a newer version of the software during this specified time. | `string` | `"66600"` | no |
| <a name="input_app_connector_group_version_profile_id"></a> [app\_connector\_group\_version\_profile\_id](#input\_app\_connector\_group\_version\_profile\_id) | ICMP Access Type for the application segment created by Consul-Terraform-Sync. | `string` | `"2"` | no |
| <a name="input_application_server_enabled"></a> [application\_server\_enabled](#input\_application\_server\_enabled) | This field defines if the server group is enabled or disabled. | `bool` | `true` | no |
| <a name="input_byo_app_connector_group"></a> [byo\_app\_connector\_group](#input\_byo\_app\_connector\_group) | Bring your own App Connector Group | `bool` | `false` | no |
| <a name="input_byo_app_connector_group_id"></a> [byo\_app\_connector\_group\_id](#input\_byo\_app\_connector\_group\_id) | User provided existing App Connector Group ID | `string` | `null` | no |
| <a name="input_byo_app_connector_group_name"></a> [byo\_app\_connector\_group\_name](#input\_byo\_app\_connector\_group\_name) | User provided existing App Connector Group ID | `string` | `"AppConnectorGroup"` | no |
| <a name="input_byo_server_group"></a> [byo\_server\_group](#input\_byo\_server\_group) | Bring your own Server Group | `bool` | `false` | no |
| <a name="input_byo_server_group_id"></a> [byo\_server\_group\_id](#input\_byo\_server\_group\_id) | User provided existing Server Group ID | `string` | `null` | no |
| <a name="input_byo_server_group_name"></a> [byo\_server\_group\_name](#input\_byo\_server\_group\_name) | User provided existing Server Group ID | `string` | `null` | no |
| <a name="input_cts_prefix"></a> [cts\_prefix](#input\_cts\_prefix) | (Optional) Prefix that will be applied to all objects created via Consul-Terraform-Sync | `string` | `"cts-"` | no |
| <a name="input_server_group_description"></a> [server\_group\_description](#input\_server\_group\_description) | This field is the description of the server group. | `string` | `"null"` | no |
| <a name="input_server_group_enabled"></a> [server\_group\_enabled](#input\_server\_group\_enabled) | This field defines if the server group is enabled or disabled. | `bool` | `true` | no |
| <a name="input_server_group_name"></a> [server\_group\_name](#input\_server\_group\_name) | This field defines the name of the server group. | `string` | `"null"` | no |
| <a name="input_services"></a> [services](#input\_services) | Consul services monitored by Consul NIA | <pre>map(<br>    object({<br>      id        = string<br>      name      = string<br>      address   = string<br>      port      = number<br>      status    = string<br>      meta      = map(string)<br>      tags      = list(string)<br>      namespace = string<br><br>      node                  = string<br>      node_id               = string<br>      node_address          = string<br>      node_datacenter       = string<br>      node_tagged_addresses = map(string)<br>      node_meta             = map(string)<br>      cts_user_defined_meta = map(string)<br>    })<br>  )</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_server"></a> [application\_server](#output\_application\_server) | Map of application servers created within the module. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

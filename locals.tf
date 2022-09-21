# locals {
#   consul_services = {
#     for id, s in var.services : s.name => s... if s.status == "passing"
#     }
# }

################################################################################
# Local Variables to Support Application Segment Domain Names and Ports
################################################################################
locals {
  consul_services = {
    # Set the value of id as the key for the map
    for k, v in var.services : v.name => {
      # Set the value of name, the ip address of the node - iterating via key, and setting the port
      addresses = (var.services[k].node_address != "" ? var.services[k].node : var.services[k].address)
    }...
  }
}
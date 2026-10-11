output "load_balancer_protocols_lookup_id" {
  description = "Map of id values across all load_balancer_protocols_lookup, keyed the same as var.load_balancer_protocols_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_load_balancer_protocols.load_balancer_protocols_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancer_protocols_lookup_compartment_id" {
  description = "Map of compartment_id values across all load_balancer_protocols_lookup, keyed the same as var.load_balancer_protocols_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_load_balancer_protocols.load_balancer_protocols_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "load_balancer_protocols_lookup_filter" {
  description = "Map of filter values across all load_balancer_protocols_lookup, keyed the same as var.load_balancer_protocols_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_load_balancer_protocols.load_balancer_protocols_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "load_balancer_protocols_lookup_protocols" {
  description = "Map of protocols values across all load_balancer_protocols_lookup, keyed the same as var.load_balancer_protocols_lookup except keys with no protocols are omitted"
  value       = { for k, v in data.oci_load_balancer_protocols.load_balancer_protocols_lookup : k => v.protocols if v.protocols != null && length(v.protocols) > 0 }
}


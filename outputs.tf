output "networkmanager_sites_id" {
  description = "Map of id values across all networkmanager_sites, keyed the same as var.networkmanager_sites"
  value       = { for k, v in aws_networkmanager_site.networkmanager_sites : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networkmanager_sites_arn" {
  description = "Map of arn values across all networkmanager_sites, keyed the same as var.networkmanager_sites"
  value       = { for k, v in aws_networkmanager_site.networkmanager_sites : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "networkmanager_sites_description" {
  description = "Map of description values across all networkmanager_sites, keyed the same as var.networkmanager_sites"
  value       = { for k, v in aws_networkmanager_site.networkmanager_sites : k => v.description if v.description != null && length(v.description) > 0 }
}
output "networkmanager_sites_global_network_id" {
  description = "Map of global_network_id values across all networkmanager_sites, keyed the same as var.networkmanager_sites"
  value       = { for k, v in aws_networkmanager_site.networkmanager_sites : k => v.global_network_id if v.global_network_id != null && length(v.global_network_id) > 0 }
}
output "networkmanager_sites_location" {
  description = "Map of location values across all networkmanager_sites, keyed the same as var.networkmanager_sites"
  value       = { for k, v in aws_networkmanager_site.networkmanager_sites : k => one(v.location) if v.location != null && length(v.location) > 0 }
}
output "networkmanager_sites_tags" {
  description = "Map of tags values across all networkmanager_sites, keyed the same as var.networkmanager_sites"
  value       = { for k, v in aws_networkmanager_site.networkmanager_sites : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "networkmanager_sites_tags_all" {
  description = "Map of tags_all values across all networkmanager_sites, keyed the same as var.networkmanager_sites"
  value       = { for k, v in aws_networkmanager_site.networkmanager_sites : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}


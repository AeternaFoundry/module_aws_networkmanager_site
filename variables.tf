variable "networkmanager_sites" {
  description = <<EOT
Map of networkmanager_sites, attributes below
Required:
    - global_network_id
Optional:
    - description
    - tags
    - tags_all
    - location (block):
        - address (optional)
        - latitude (optional)
        - longitude (optional)
EOT

  type = map(object({
    global_network_id = string
    description       = optional(string)
    tags              = optional(map(string))
    tags_all          = optional(map(string))
    location = optional(object({
      address   = optional(string)
      latitude  = optional(string)
      longitude = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


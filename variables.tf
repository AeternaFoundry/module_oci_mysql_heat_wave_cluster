variable "mysql_heat_wave_clusters" {
  description = <<EOT
Map of mysql_heat_wave_clusters, attributes below
Required:
    - cluster_size
    - db_system_id
    - shape_name
Optional:
    - is_lakehouse_enabled
    - state
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster_size         = number
    db_system_id         = string
    shape_name           = string
    is_lakehouse_enabled = optional(bool)
    state                = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.mysql_heat_wave_clusters : (
        v.state == null || (contains([for v in ["INACTIVE", "ACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"INACTIVE\", \"ACTIVE\""
  }
}


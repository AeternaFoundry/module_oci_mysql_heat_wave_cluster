resource "oci_mysql_heat_wave_cluster" "mysql_heat_wave_clusters" {
  for_each = var.mysql_heat_wave_clusters

  cluster_size         = each.value.cluster_size
  db_system_id         = each.value.db_system_id
  shape_name           = each.value.shape_name
  is_lakehouse_enabled = each.value.is_lakehouse_enabled
  state                = each.value.state

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


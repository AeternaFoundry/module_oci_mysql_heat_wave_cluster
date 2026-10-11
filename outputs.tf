output "mysql_heat_wave_clusters_id" {
  description = "Map of id values across all mysql_heat_wave_clusters, keyed the same as var.mysql_heat_wave_clusters except keys with no id are omitted"
  value       = { for k, v in oci_mysql_heat_wave_cluster.mysql_heat_wave_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mysql_heat_wave_clusters_cluster_nodes" {
  description = "Map of cluster_nodes values across all mysql_heat_wave_clusters, keyed the same as var.mysql_heat_wave_clusters except keys with no cluster_nodes are omitted"
  value       = { for k, v in oci_mysql_heat_wave_cluster.mysql_heat_wave_clusters : k => v.cluster_nodes if v.cluster_nodes != null && length(v.cluster_nodes) > 0 }
}
output "mysql_heat_wave_clusters_cluster_size" {
  description = "Map of cluster_size values across all mysql_heat_wave_clusters, keyed the same as var.mysql_heat_wave_clusters except keys with no cluster_size are omitted"
  value       = { for k, v in oci_mysql_heat_wave_cluster.mysql_heat_wave_clusters : k => v.cluster_size if v.cluster_size != null }
}
output "mysql_heat_wave_clusters_db_system_id" {
  description = "Map of db_system_id values across all mysql_heat_wave_clusters, keyed the same as var.mysql_heat_wave_clusters except keys with no db_system_id are omitted"
  value       = { for k, v in oci_mysql_heat_wave_cluster.mysql_heat_wave_clusters : k => v.db_system_id if v.db_system_id != null && length(v.db_system_id) > 0 }
}
output "mysql_heat_wave_clusters_is_lakehouse_enabled" {
  description = "Map of is_lakehouse_enabled values across all mysql_heat_wave_clusters, keyed the same as var.mysql_heat_wave_clusters except keys with no is_lakehouse_enabled are omitted"
  value       = { for k, v in oci_mysql_heat_wave_cluster.mysql_heat_wave_clusters : k => v.is_lakehouse_enabled if v.is_lakehouse_enabled != null }
}
output "mysql_heat_wave_clusters_lifecycle_details" {
  description = "Map of lifecycle_details values across all mysql_heat_wave_clusters, keyed the same as var.mysql_heat_wave_clusters except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_mysql_heat_wave_cluster.mysql_heat_wave_clusters : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "mysql_heat_wave_clusters_shape_name" {
  description = "Map of shape_name values across all mysql_heat_wave_clusters, keyed the same as var.mysql_heat_wave_clusters except keys with no shape_name are omitted"
  value       = { for k, v in oci_mysql_heat_wave_cluster.mysql_heat_wave_clusters : k => v.shape_name if v.shape_name != null && length(v.shape_name) > 0 }
}
output "mysql_heat_wave_clusters_state" {
  description = "Map of state values across all mysql_heat_wave_clusters, keyed the same as var.mysql_heat_wave_clusters except keys with no state are omitted"
  value       = { for k, v in oci_mysql_heat_wave_cluster.mysql_heat_wave_clusters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "mysql_heat_wave_clusters_time_created" {
  description = "Map of time_created values across all mysql_heat_wave_clusters, keyed the same as var.mysql_heat_wave_clusters except keys with no time_created are omitted"
  value       = { for k, v in oci_mysql_heat_wave_cluster.mysql_heat_wave_clusters : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "mysql_heat_wave_clusters_time_updated" {
  description = "Map of time_updated values across all mysql_heat_wave_clusters, keyed the same as var.mysql_heat_wave_clusters except keys with no time_updated are omitted"
  value       = { for k, v in oci_mysql_heat_wave_cluster.mysql_heat_wave_clusters : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}


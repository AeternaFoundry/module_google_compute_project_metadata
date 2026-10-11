output "compute_project_metadata_id" {
  description = "Map of id values across all compute_project_metadata, keyed the same as var.compute_project_metadata except keys with no id are omitted"
  value       = { for k, v in google_compute_project_metadata.compute_project_metadata : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_project_metadata_deletion_policy" {
  description = "Map of deletion_policy values across all compute_project_metadata, keyed the same as var.compute_project_metadata except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_project_metadata.compute_project_metadata : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_project_metadata_metadata" {
  description = "Map of metadata values across all compute_project_metadata, keyed the same as var.compute_project_metadata except keys with no metadata are omitted"
  value       = { for k, v in google_compute_project_metadata.compute_project_metadata : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "compute_project_metadata_project" {
  description = "Map of project values across all compute_project_metadata, keyed the same as var.compute_project_metadata except keys with no project are omitted"
  value       = { for k, v in google_compute_project_metadata.compute_project_metadata : k => v.project if v.project != null && length(v.project) > 0 }
}


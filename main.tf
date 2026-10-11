resource "google_compute_project_metadata" "compute_project_metadata" {
  for_each = var.compute_project_metadata

  metadata        = each.value.metadata
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}


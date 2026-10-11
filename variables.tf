variable "compute_project_metadata" {
  description = <<EOT
Map of compute_project_metadata, attributes below
Required:
    - metadata
Optional:
    - deletion_policy
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    metadata        = map(string)
    deletion_policy = optional(string)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}


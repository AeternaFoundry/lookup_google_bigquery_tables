variable "bigquery_tables_lookup" {
  description = <<EOT
Map of bigquery_tables_lookup, attributes below
Required:
    - dataset_id
Optional:
    - project
EOT

  type = map(object({
    dataset_id = string
    project    = optional(string)
  }))
}


output "bigquery_tables_lookup_id" {
  description = "Map of id values across all bigquery_tables_lookup, keyed the same as var.bigquery_tables_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_bigquery_tables.bigquery_tables_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_tables_lookup_dataset_id" {
  description = "Map of dataset_id values across all bigquery_tables_lookup, keyed the same as var.bigquery_tables_lookup except keys with no dataset_id are omitted"
  value       = { for k, v in data.google_bigquery_tables.bigquery_tables_lookup : k => v.dataset_id if v.dataset_id != null && length(v.dataset_id) > 0 }
}
output "bigquery_tables_lookup_project" {
  description = "Map of project values across all bigquery_tables_lookup, keyed the same as var.bigquery_tables_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_bigquery_tables.bigquery_tables_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigquery_tables_lookup_tables" {
  description = "Map of tables values across all bigquery_tables_lookup, keyed the same as var.bigquery_tables_lookup except keys with no tables are omitted"
  value       = { for k, v in data.google_bigquery_tables.bigquery_tables_lookup : k => v.tables if v.tables != null && length(v.tables) > 0 }
}


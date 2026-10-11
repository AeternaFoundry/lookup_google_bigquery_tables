data "google_bigquery_tables" "bigquery_tables_lookup" {
  for_each = var.bigquery_tables_lookup

  dataset_id = each.value.dataset_id
  project    = each.value.project
}


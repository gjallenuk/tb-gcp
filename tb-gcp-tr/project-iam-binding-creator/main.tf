resource "google_project_iam_binding" "bucket_audit_log_writer" {
  project = var.logging_project_id
  members = var.members
  role    = var.role
}
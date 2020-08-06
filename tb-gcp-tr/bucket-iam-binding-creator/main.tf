resource "google_storage_bucket_iam_binding" "binding" {
  bucket = var.bucket
  role   = var.role
  members = [var.members]
}
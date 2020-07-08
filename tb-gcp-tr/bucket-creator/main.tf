resource "random_id" "logging" {
  byte_length = var.randomidlen
}

resource "google_storage_bucket" "audit_log_bucket" {
  project  = var.logging_project_id
  name     = join("", [var.bucketprefix, random_id.logging.hex])
  location = var.region

  labels = {
    fuction = var.labelfuction
  }

  dynamic "lifecycle_rule" {
    for_each = [for c in var.lifecyclerule : {
      age           = c.age
      type          = c.type
      storage_class = c.storage_class
    }]

    content {
      action {
        type          = lifecycle_rule.value.type
        storage_class = lifecycle_rule.value.storage_class
      }
      condition {
        age = lifecycle_rule.value.age
      }
    }
  }
}
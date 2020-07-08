resource "random_id" "rannum" {
  byte_length = var.random_id_len
}

resource "google_storage_bucket" "bucket" {
  project  = var.project_id
  name     = join("", [var.bucket_prefix, random_id.rannum.hex])
  location = var.region

  labels = {
    fuction = var.label_function
  }

  dynamic "lifecycle_rule" {
    for_each = [for c in var.lifecycle_rule : {
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
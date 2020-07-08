variable "region" {
  type    = "string"
  default = ""
}
variable "root_id" {
  type    = "string"
  default = ""
}
variable "logging_project_id" {
  type    = "string"
  default = ""
}
variable "randomidlen" {
  type    = "string"
  default = "6"
}
variable "services" {
  type    = "string"
  default = "allServices"
}
variable "location" {
  type    = "string"
  default = "EUROPE-WEST2"
}
variable "bucketprefix" {
  type    = "string"
  default = "auditlogbucket-"
}
variable "labelfuction" {
  type    = "string"
  default = "bucket_to_store_root_folder_audit_logs"
}
variable "lifecyclerule" {
  type = list(map(string))

  default = [
    {
      type          = "SetStorageClass"
      storage_class = "NEARLINE"
      age           = "30"
    },
    {
      type          = "Delete"
      storage_class = ""
      age           = "365"
    }
  ]
}
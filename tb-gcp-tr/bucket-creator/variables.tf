variable "region" {
  type    = "string"
  default = ""
}
variable "root_id" {
  type    = "string"
  default = ""
}
variable "project_id" {
  type    = "string"
  default = ""
}
variable "random_id_len" {
  type    = "string"
  default = ""
}
variable "services" {
  type    = "string"
  default = ""
}
variable "location" {
  type    = "string"
  default = ""
}
variable "bucket_prefix" {
  type    = "string"
  default = ""
}
variable "label_function" {
  type    = "string"
  default = ""
}
variable "lifecycle_rule" {
  type = list(map(string))

  default = [
    {
      type          = ""
      storage_class = ""
      age           = ""
    },
    {
      type          = ""
      storage_class = ""
      age           = ""
    }
  ]
}
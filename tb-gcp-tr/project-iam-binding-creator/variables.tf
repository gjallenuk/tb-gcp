variable "audit_logging_project_id" {
  description = "Project ID of logging project"
  default = ""
  type = string
}
variable "members" {
  description = "List of log writers which will have permissions to create logs"
  default = []
  type = list(string)
}
variable "role" {
  description = "Log creating permissions to assign to members"
  default = ""
  type = string
}
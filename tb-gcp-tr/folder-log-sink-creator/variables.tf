variable "log_sink_folder" {
  description = "folder which logging will be enabled for"
  default     = ""
  type        = string
}

variable "log_sink_name" {
  description = "name of log sink"
  default     = ""
  type        = string
}

variable "log_sink_destination" {
  description = "destination to which logs will be exported"
  default     = ""
  type        = string
}

variable "log_sink_filter" {
  description = "filter to define what logs will be exported"
  default     = ""
  type        = string
}

variable "include_children" {
  description = "include logs for folders and project below folder specified"
  default     = true
  type        = bool
}



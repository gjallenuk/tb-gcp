resource "google_logging_folder_sink" "folder_log_sink" {
  folder      = var.log_sink_folder
  name        = var.log_sink_name
  destination = var.log_sink_destination
  filter      = var.log_sink_filter
}

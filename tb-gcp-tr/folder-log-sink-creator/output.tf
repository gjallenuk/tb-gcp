output "log_sink_writer" {
  value = google_logging_folder_sink.folder_log_sink.writer_identity
}

output "resource_manager_resource_type_schedule_scans_id" {
  description = "Map of id values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.id }
}
output "resource_manager_resource_type_schedule_scans_day_of_month" {
  description = "Map of day_of_month values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.day_of_month }
}
output "resource_manager_resource_type_schedule_scans_day_of_week" {
  description = "Map of day_of_week values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.day_of_week }
}
output "resource_manager_resource_type_schedule_scans_description" {
  description = "Map of description values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.description }
}
output "resource_manager_resource_type_schedule_scans_frequency_type" {
  description = "Map of frequency_type values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.frequency_type }
}
output "resource_manager_resource_type_schedule_scans_name" {
  description = "Map of name values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.name }
}
output "resource_manager_resource_type_schedule_scans_next_run" {
  description = "Map of next_run values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.next_run }
}
output "resource_manager_resource_type_schedule_scans_resource_labels" {
  description = "Map of resource_labels values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.resource_labels }
}
output "resource_manager_resource_type_schedule_scans_resource_type_id" {
  description = "Map of resource_type_id values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.resource_type_id }
}
output "resource_manager_resource_type_schedule_scans_start_time" {
  description = "Map of start_time values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.start_time }
}
output "resource_manager_resource_type_schedule_scans_task_id" {
  description = "Map of task_id values across all resource_manager_resource_type_schedule_scans, keyed the same as var.resource_manager_resource_type_schedule_scans"
  value       = { for k, v in britive_resource_manager_resource_type_schedule_scan.resource_manager_resource_type_schedule_scans : k => v.task_id }
}


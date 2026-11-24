resource "britive_resource_manager_resource_type_schedule_scan" "resource_manager_resource_type_schedule_scans" {
  for_each = var.resource_manager_resource_type_schedule_scans

  frequency_type   = each.value.frequency_type
  name             = each.value.name
  resource_type_id = each.value.resource_type_id
  start_time       = each.value.start_time
  day_of_month     = each.value.day_of_month
  day_of_week      = each.value.day_of_week
  description      = each.value.description

  dynamic "resource_labels" {
    for_each = each.value.resource_labels != null ? each.value.resource_labels : []
    content {
      label_key = resource_labels.value.label_key
      values    = resource_labels.value.values
    }
  }
}


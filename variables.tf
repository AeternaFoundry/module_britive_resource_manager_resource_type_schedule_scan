variable "resource_manager_resource_type_schedule_scans" {
  description = <<EOT
Map of resource_manager_resource_type_schedule_scans, attributes below
Required:
    - frequency_type
    - name
    - resource_type_id
    - start_time
Optional:
    - day_of_month
    - day_of_week
    - description
    - resource_labels (block):
        - label_key (required)
        - values (required)
EOT

  type = map(object({
    frequency_type   = string
    name             = string
    resource_type_id = string
    start_time       = string
    day_of_month     = optional(number)
    day_of_week      = optional(string)
    description      = optional(string)
    resource_labels = optional(list(object({
      label_key = string
      values    = set(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.resource_manager_resource_type_schedule_scans : (
        contains([for v in ["Daily", "Weekly", "Monthly"] : lower(v)], lower(v.frequency_type))
      )
    ])
    error_message = "must be one of: \"Daily\", \"Weekly\", \"Monthly\""
  }
  validation {
    condition = alltrue([
      for k, v in var.resource_manager_resource_type_schedule_scans : (
        v.day_of_week == null || (contains([for v in ["Sunday", "Sun", "Monday", "Mon", "Tuesday", "Tue", "Wednesday", "Wed", "Thursday", "Thu", "Friday", "Fri", "Saturday", "Sat"] : lower(v)], lower(v.day_of_week)))
      )
    ])
    error_message = "must be one of: \"Sunday\", \"Sun\", \"Monday\", \"Mon\", \"Tuesday\", \"Tue\", \"Wednesday\", \"Wed\", \"Thursday\", \"Thu\", \"Friday\", \"Fri\", \"Saturday\", \"Sat\""
  }
}


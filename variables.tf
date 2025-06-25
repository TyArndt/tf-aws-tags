variable "baseline_tags" {
type = map(string)

validation {
    condition = length(var.baseline_tags.app) >= 3
    error_message = "The value for baseline_tags.app is not 3 chracters in length or greater."
}

validation {
    condition = var.baseline_tags.cost_center >= 100 && var.baseline_tags.cost_center <= 999999
    error_message = "The value for baseline_tags.cost_center must be between 100 and 999999."
}

validation {
    condition = var.baseline_tags.app_id <= 99999 
    error_message = "The value for baseline_tags.app_id must not exceed 99999"
}

validation {
    condition = length(var.baseline_tags.team) >= 3 && length(var.baseline_tags.team) <= 6 
    error_message = "The value for baseline_tags.team must be atleast 3 characters long but not longer than 6."
}

}

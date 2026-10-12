output "users_lookup_id" {
  description = "Map of id values across all users_lookup, keyed the same as var.users_lookup except keys with no id are omitted"
  value       = { for k, v in data.pagerduty_users.users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "users_lookup_team_ids" {
  description = "Map of team_ids values across all users_lookup, keyed the same as var.users_lookup except keys with no team_ids are omitted"
  value       = { for k, v in data.pagerduty_users.users_lookup : k => v.team_ids if v.team_ids != null && length(v.team_ids) > 0 }
}
output "users_lookup_users" {
  description = "Map of users values across all users_lookup, keyed the same as var.users_lookup except keys with no users are omitted"
  value       = { for k, v in data.pagerduty_users.users_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}


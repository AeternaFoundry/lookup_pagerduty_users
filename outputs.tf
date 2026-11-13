output "users_lookup_id" {
  description = "Map of id values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.pagerduty_users.users_lookup : k => v.id }
}
output "users_lookup_team_ids" {
  description = "Map of team_ids values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.pagerduty_users.users_lookup : k => v.team_ids }
}
output "users_lookup_users" {
  description = "Map of users values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.pagerduty_users.users_lookup : k => v.users }
}


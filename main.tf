data "pagerduty_users" "users_lookup" {
  for_each = var.users_lookup

  team_ids = each.value.team_ids
}


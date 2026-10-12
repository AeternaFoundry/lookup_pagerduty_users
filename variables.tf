variable "users_lookup" {
  description = <<EOT
Map of users_lookup, attributes below
Optional:
    - team_ids
EOT

  type = map(object({
    team_ids = optional(list(string))
  }))
}


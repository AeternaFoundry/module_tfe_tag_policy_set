output "tag_policy_sets_id" {
  description = "Map of id values across all tag_policy_sets, keyed the same as var.tag_policy_sets except keys with no id are omitted"
  value       = { for k, v in tfe_tag_policy_set.tag_policy_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tag_policy_sets_key" {
  description = "Map of key values across all tag_policy_sets, keyed the same as var.tag_policy_sets except keys with no key are omitted"
  value       = { for k, v in tfe_tag_policy_set.tag_policy_sets : k => v.key if v.key != null && length(v.key) > 0 }
}
output "tag_policy_sets_policy_set_id" {
  description = "Map of policy_set_id values across all tag_policy_sets, keyed the same as var.tag_policy_sets except keys with no policy_set_id are omitted"
  value       = { for k, v in tfe_tag_policy_set.tag_policy_sets : k => v.policy_set_id if v.policy_set_id != null && length(v.policy_set_id) > 0 }
}
output "tag_policy_sets_value" {
  description = "Map of value values across all tag_policy_sets, keyed the same as var.tag_policy_sets except keys with no value are omitted"
  value       = { for k, v in tfe_tag_policy_set.tag_policy_sets : k => v.value if v.value != null && length(v.value) > 0 }
}


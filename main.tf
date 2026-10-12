resource "tfe_tag_policy_set" "tag_policy_sets" {
  for_each = var.tag_policy_sets

  key           = each.value.key
  policy_set_id = each.value.policy_set_id
  value         = each.value.value
}


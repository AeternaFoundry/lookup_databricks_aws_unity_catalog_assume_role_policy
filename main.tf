data "databricks_aws_unity_catalog_assume_role_policy" "aws_unity_catalog_assume_role_policy_lookup" {
  for_each = var.aws_unity_catalog_assume_role_policy_lookup

  aws_account_id        = each.value.aws_account_id
  external_id           = each.value.external_id
  role_name             = each.value.role_name
  aws_partition         = each.value.aws_partition
  unity_catalog_iam_arn = each.value.unity_catalog_iam_arn
}


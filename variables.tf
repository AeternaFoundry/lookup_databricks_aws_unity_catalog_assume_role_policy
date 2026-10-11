variable "aws_unity_catalog_assume_role_policy_lookup" {
  description = <<EOT
Map of aws_unity_catalog_assume_role_policy_lookup, attributes below
Required:
    - aws_account_id
    - external_id
    - role_name
Optional:
    - aws_partition
    - unity_catalog_iam_arn
EOT

  type = map(object({
    aws_account_id        = string
    external_id           = string
    role_name             = string
    aws_partition         = optional(string)
    unity_catalog_iam_arn = optional(string)
  }))
}


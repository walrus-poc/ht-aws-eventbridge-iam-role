variable "eventbridge_iam_role_name" {
  description = <<-EOF
  Please input the EventBridge IAM role name
EOF
  type        = string
  default     = "iam_for_dns_eventbridge"
}

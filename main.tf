data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["scheduler.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "iam_for_dns_eventbridge" {
  name               = var.eventbridge_iam_role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

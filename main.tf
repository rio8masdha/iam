provider "aws" {
  region  = "us-east-1"
  access_key = var.access_id_iam
  secret_key = var.secret_iam
}

module "iam-user" {
  source = "../"

  name        = "iam-user"
  environment = "test"
  label_order = ["name", "environment"]

  policy_enabled          = true
  policy                  = data.aws_iam_policy_document.default.json
  pgp_key                 = ""
  password_length         = 20
  password_reset_required = true
}

data "aws_iam_policy_document" "default" {
  statement {
    actions = [
      "ec2:Describe*"
    ]
    effect    = "Allow"
    resources = ["*"]
  }
}

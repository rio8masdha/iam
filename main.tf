#provider "aws" {
#      region     = "${var.region}"
#      access_key = "${var.access_key}"
#      secret_key = "${var.secret_key}"
#}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  access_key = var.access_id_iam
  secret_key = var.secret_iam
}


resource "aws_iam_user" "user" {
  name = var.name
}

resource "aws_iam_user_policy_attachment" "attach-user" {
  user       = "${aws_iam_user.user.name}"
  policy_arn = var.policy_arns
}

#provider "aws" {
#      region     = "${var.region}"
#      access_key = "${var.access_key}"
#      secret_key = "${var.secret_key}"
#}

provider "aws" {
  region  = "us-east-1"
  access_key = var.access_id
  secret_key = var.secret
}

variable "access_id_iam" {
  default = ""
}

variable "secret_iam" {
  default = ""
}

resource "aws_iam_user" "user" {
  name = var.name
}

resource "aws_iam_user_policy_attachment" "attach-user" {
  user       = "${aws_iam_user.user.name}"
  policy_arn = var.policy_arns
}

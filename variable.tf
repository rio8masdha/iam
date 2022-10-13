variable "access_id_iam" {
  default = ""
}

variable "secret_iam" {
  default = ""
}

#variable "region" {
#}

variable "name" {
  default = "myadmin"
  type        = "string"
  description = "The name of the user"
}

variable "policy_arns" {
  default = "arn:aws:iam::aws:policy/AdministratorAccess"
  type        = string
  description = "ARN of policy to be associated with the created IAM user"
}


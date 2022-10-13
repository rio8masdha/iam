#region = "us-east-1"
#access_key = "AKIAVTYLLDDAHWWPFV6M"
#secret_key = "/DdB65VKRwS4AMxgE4NTHe2te+MaoAQICVbGeu906/"

provider "aws" {
  region  = "us-east-1"
  access_key = var.access_id_iam
  secret_key = var.secret_iam
}

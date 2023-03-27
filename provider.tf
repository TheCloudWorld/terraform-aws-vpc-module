provider "aws" {
  # The security credentials for AWS Account A.
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "us-east-1"

  assume_role {
    # roles of account B where resources will be deloyed
    role_arn    = var.account_role
    external_id = var.ext
  }
}

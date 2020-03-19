variable "terraform_state_name" {
  type        = string
  description = "Name of the s3 bucket and dynamodb locking table for terraform state."
}

variable "region" {
  type        = string
  description = "Region where the stack will be deployed."
}
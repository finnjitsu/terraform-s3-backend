resource "aws_s3_bucket" "terraform_state" {
  bucket = var.remote_state_name
  acl    = "private"

  tags = {
    Name = var.remote_state_name
  }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name     = var.remote_state_name
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = var.remote_state_name
  }
}
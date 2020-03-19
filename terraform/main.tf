resource "aws_s3_bucket" "terraform_state" {
  bucket        = var.terraform_state_name
  acl           = "private"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = {
    Name = var.terraform_state_name
  }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name     = var.terraform_state_name
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = var.terraform_state_name
  }
}
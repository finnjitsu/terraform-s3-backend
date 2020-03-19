resource "aws_dynamodb_table" "terraform_state_lock" {
  name         = var.terraform_state_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = var.terraform_state_name
  }
}
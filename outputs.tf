output "state_bucket_id" {
  value = aws_s3_bucket.terraform_state.id
}

output "state_bucket_arn" {
  value = aws_s3_bucket.terraform_state.arn
}

output "lock_table_id" {
  value = aws_dynamodb_table.terraform_state_lock.id
}

output "lock_table_arn" {
  value = aws_dynamodb_table.terraform_state_lock.arn
}
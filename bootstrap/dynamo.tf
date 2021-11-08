resource "aws_dynamodb_table" "my_stat_locks" {
  name           = "terraform-best-practices-states-lock"
  hash_key       = "LockID"
  read_capacity  = 1
  write_capacity = 1

  attribute {
    name = "LockID"
    type = "S"
  }
}
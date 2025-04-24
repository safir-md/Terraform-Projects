resource "aws_dynamodb_table" "state-lock-dynamodb-table" {
  name           = "${var.Environment}-state-lock-dynamodb-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }

  tags = {
    Name        = "${var.Environment}-state-lock-dynamodb-table"
    Environment = var.Environment
  }
}
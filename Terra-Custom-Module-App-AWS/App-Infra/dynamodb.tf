resource "aws_dynamodb_table" "infra-app-dynamodb-table" {
  name           = "${var.Environment}-${var.DynamoDB_Table_Name}"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = var.DynamoDB_Hash_Key

  attribute {
    name = var.DynamoDB_Hash_Key
    type = "S"
  }

  tags = {
    Name        = "${var.Environment}-${var.DynamoDB_Table_Name}"
    Environment = var.Environment
  }
}
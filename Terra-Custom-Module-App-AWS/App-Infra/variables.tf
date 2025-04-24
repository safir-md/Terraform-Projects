variable "Environment" {
  description = "The environment for the resources (e.g., dev, prod)."
  type        = string
}

variable "Bucket_Name" {
  description = "S3 bucket name for ${var.Environment} Infra App"
  type = string
}

variable "S3_Count" {
  description = "Instance Count of S3 Buckets"
  type = number
}

variable "DynamoDB_Table_Name" {
  description = "Dynamo DB Table Name for ${var.Environment} Infra App"
  type = string
}

variable "DynamoDB_Hash_Key" {
  description = "Hash Key for Dynamo DB"
  type = string
}
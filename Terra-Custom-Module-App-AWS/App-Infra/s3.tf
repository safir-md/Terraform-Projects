resource "aws_s3_bucket" "infra_app_s3" {
  count = var.S3_Count
  bucket = "${var.Environment}-${var.Bucket_Name}"

  tags = {
    Name        = "${var.Environment}-${var.Bucket_Name}"
    Description = "S3 bucket for ${var.Environment} Infra App"
    Environment = var.Environment
  }
}
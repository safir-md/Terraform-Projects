output "app-infra-s3-names" {
  value = aws_s3_bucket.infra_app_s3[*].bucket
  description = "App Infra Bucket Names"
}
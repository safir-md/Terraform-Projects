resource "aws_s3_bucket" "remote_state_s3" {
  bucket = "${var.Environment}-remote-state-s3-bucket"

  tags = {
    Name        = "${var.Environment}-remote-state-s3-bucket"
    Description = "S3 bucket to store Terraform remote state files"
    Environment = var.Environment
  }
}
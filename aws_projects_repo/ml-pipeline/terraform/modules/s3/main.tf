resource "aws_s3_bucket" "raw" {
  bucket = var.bucket_name_raw
  acl    = "private"
  tags = var.tags
}

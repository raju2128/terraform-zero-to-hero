resource "aws_s3_bucket" "kannayya-kanna-2128" {
  # With account id, this S3 bucket names can be *globally* unique.
  bucket = "kannayya-kanna-2128"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = "kannayya-kanna-2128"
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = "kannayya-kanna-2128"

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  region = "ap-south-1"
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name 
  tags = var.tags
}

resource "aws_s3_bucket_website_configuration" "static_website_configuration" {
  depends_on = [ aws_s3_bucket.bucket ]
  bucket = aws_s3_bucket.bucket
  index_document {
    suffix = "index.html"
  }
  
}
output "bucket_arn" {
    description = "bucket arn"
    value = aws_s3_bucket.bucket.arn
}

output "bucket_url" {
    description = "site s3 endpoint"
    value = aws_s3_bucket_website_configuration.static_website_configuration.bucket_url
  
}
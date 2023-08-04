variable "bucket_name" {
  description = "name to bucket"
  type        = string
}

variable "tags" {
  description = "tags for s3 bucket"
  type = list(map(string))
  default = []
}
# Terraform AWS Static Website Module

## Description

This Terraform module creates an S3 bucket and configures it to serve as a static website on Amazon Web Services (AWS). The module accepts inputs for the bucket name and optional tags to apply.

## Features
* Creates an S3 bucket for hosting a static website.
* Configures the bucket to serve the specified index document.

## Usage
``` json 
module "static_website" {
  source      = "github.com/jcescobarn/tf_s3_static_site"
  bucket_name = "bucket_name"
  tags = [
    {
      key   = "Environment",
      value = "Production"
    },
    {
      key   = "Team",
      value = "DevOps"
    }
  ]
}
```

## Inputs
* bucket_name (required): The desired name for the S3 bucket.
* tags (optional): A list of maps representing tags to apply to the S3 bucket. Defaults to an empty list.

## Outputs
* bucket_arn: The Amazon Resource Name (ARN) of the created S3 bucket.
* bucket_url: The endpoint URL for the static website hosted in the S3 bucket.
//--------------------------------------------------------------------
// Modules
module "s3_bucket" {
  source  = "app.terraform.io/SALONI-training/s3-bucket/aws"
  version = "2.6.0"

  acceleration_status = "Suspended"
#   bucket = "test"
  bucket_prefix = "salonidaswani"
#   policy = {   statement {     sid = "1"      actions = [       "s3:ListAllMyBuckets",       "s3:GetBucketLocation",     ]      resources = [       "arn:aws:s3:::*",     ]   }
  request_payer = "BucketOwner"
  tags = {
    "Department" = "My bucket"
    "Billable" = "Dev"
  }
}

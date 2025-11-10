# Root calling modules (example)
provider "aws" {
  region = "ap-south-1"
}

module "s3" {
  source = "../modules/s3"
  bucket_name_raw = "example-raw-bucket-<replace>"
  tags = { Project = "ml-pipeline" }
}

# Lambda and EC2 modules would be called similarly

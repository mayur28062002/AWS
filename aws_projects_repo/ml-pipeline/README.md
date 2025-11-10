# ML Pipeline (template)
This folder contains Terraform module skeletons and a simple Lambda handler for a demo ML pipeline.

Structure:
- terraform/modules/s3/
- terraform/modules/lambda/
- terraform/modules/ec2/
- lambda/handler.py (example ETL handler)

Usage:
- Inspect terraform files, replace placeholders, and run `terraform init` in envs/dev after configuring backend.

# AWS Project Templates - Mayur Nair
This repository contains **sanitized, upload-safe templates** and skeletons for three projects described in my resume.
These are *infrastructure/configuration and app skeletons only* — they do **not** create live AWS resources when uploaded as-is.
Use them for demo, interview walkthroughs, or to run locally after adding required credentials/configuration.

Projects included:
- `ml-pipeline/` - Terraform + Lambda handler + sample EC2 training dockerfile
- `k8s-microservices/` - Dockerized microservices + Helm chart skeleton + Jenkinsfile
- `dr-backup/` - Terraform skeleton for AWS Backup + Lambda restore-test script

**Important:** Do NOT commit any secrets or `.tfstate` files. Replace placeholders (e.g., <YOUR_BUCKET_NAME>) before use.

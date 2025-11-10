# Example: AWS Backup vault and plan (skeleton)
resource "aws_backup_vault" "primary" {
  name = "primary-backup-vault-<replace>"
}

resource "aws_backup_vault" "secondary" {
  name = "secondary-backup-vault-<replace>"
}

resource "aws_backup_plan" "daily" {
  name = "daily-backup-plan"
  rule {
    rule_name = "daily-backup"
    target_vault_name = aws_backup_vault.primary.name
    schedule = "cron(0 2 * * ? *)"
    lifecycle {
      delete_after = 30
    }
    # copy_action requires ARN; left as placeholder
    # copy_action {
    #   destination_vault_arn = aws_backup_vault.secondary.arn
    # }
  }
}

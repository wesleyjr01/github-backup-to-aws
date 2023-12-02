locals {
  # Lambda Configuration
  lambda_github_backup = {
    name     = "github_backup"
    handler  = "lambda_function.lambda_handler"
    zip_file = "github_backup.zip"
  }
  bucket_backup_name = jsondecode(data.aws_secretsmanager_secret_version.backup_current.secret_string)["BACKUP_S3_BUCKET"]
  backup_secret_arn = "arn:aws:secretsmanager:us-east-1:657613168245:secret:prod/github-backup-6maeAt"

}

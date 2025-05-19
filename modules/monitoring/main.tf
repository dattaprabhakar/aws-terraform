
resource "aws_cloudtrail" "trail" {
  name           = "main-trail"
  s3_bucket_name = var.trail_bucket
}

resource "aws_cloudwatch_log_group" "logs" {
  name              = "/app/logs"
  retention_in_days = 14
}


resource "aws_sns_topic" "alerts" {
  name = "alerts-topic"
}

resource "aws_ses_domain_identity" "example" {
  domain = "example.com"
}

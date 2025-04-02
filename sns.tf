resource "aws_sns_topic" "alert_topic" {
  name = "${local.name_prefix}-alert-topic"
}

resource "aws_sns_topic_subscription" "alert_email" {
  topic_arn = aws_sns_topic.alert_topic.arn
  protocol  = "email"
  endpoint  = "${local.email}"  # Replace with your email
}
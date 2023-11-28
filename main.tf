#creation of SQS
resource "aws_sqs_queue" "sqs_queue" {
  name = var.sqs_name

  tags = {
    Name = var.tag_name
  }

  fifo_queue = var.queue_type
  
  policy = jsonencode({
    Version = "2012-10-17",
    Id: "__default_policy_ID",
    Statement = [
      {
        Sid: "__owner_statement",
        Effect    = "Allow",
        Principal = {
          "AWS": "arn:aws:iam::${var.iam_arn}:root"
        }
        Action    = "SQS:*",
        Resource  = "arn:aws:sqs::${var.region}:${var.iam_arn}:${var.sqs_name}",
      },
    ],
  })
}


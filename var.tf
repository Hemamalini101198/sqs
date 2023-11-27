variable "region" {
  description = "region where the sqs will be created"
  type = string  
}

variable "sqs_name" {
  description = "name of sqs"
  type = string
}

variable "env" {
  description = "environment for tag"
  type = string
}

variable "tag_name" {
  description = "tag name for sqs"
  type = string
}

variable "iam_arn" {
  type = string
  
}

variable "queue_type" {
  description = "Type of the SQS queue (standard or fifo)"
  type        = string
}

/*
variable "kms_key_id" {
  description = "KMS key ID for server-side encryption"
  type        = string
}
*/
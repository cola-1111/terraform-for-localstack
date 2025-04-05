variable "aws_region" {
  description = "使用するAWSリージョン"
  type        = string
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "作成するS3バケットの名前"
  type        = string
  default     = "my-example-bucket"
}

variable "dynamodb_table_name" {
  description = "作成するDynamoDBテーブルの名前"
  type        = string
  default     = "example-table"
} 
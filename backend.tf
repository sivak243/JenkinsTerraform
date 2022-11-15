terraform {
  backend "s3" {
    bucket = "mydev-tf-state-bucket2"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "DynamoDB"
  }
}

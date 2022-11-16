terraform {
  backend "s3" {
    bucket = "my-terffaformbucket"
    key = "main" 
    region = "ap-south-1"
    dynamodb_table = "DynamoDB"
  }
}

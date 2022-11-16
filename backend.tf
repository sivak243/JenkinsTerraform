terraform {
  backend "s3" {
    bucket = "my-backend-bucket243"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "My-dynano-db"
  }
}

terraform {
  backend "s3" {
    bucket = "jenkins-terraform244"
    key = "main" 
    region = "ap-south-1"
    dynamodb_table = "terraform-state-table"
  }
}

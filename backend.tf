terraform {
  backend "s3" {
    bucket = "jenkins-terraform243"
    key = "main" 
    region = "ap-south-1"
    dynamodb_table = "terraform-state-table"
  }
}

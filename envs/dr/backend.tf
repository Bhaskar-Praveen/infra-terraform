terraform {
  backend "s3" {
    bucket         = "devops-platform4-terraform-state"
    key            = "dr/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
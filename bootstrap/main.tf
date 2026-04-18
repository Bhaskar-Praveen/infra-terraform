resource "aws_s3_bucket" "state" {
  bucket = "devops-platform4-terraform-state  cd infra-terraform/bootstrap
  terraform init -backend=false
  terraform import aws_dynamodb_table.lock terraform-locks
  terraform apply -auto-approve"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "lock" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  lifecycle {
    prevent_destroy = true
  }
}
resource "aws_s3_bucket" "my_state_bucket" {
  bucket = "terraform-best-practices-state-bucket"

  lifecycle {
    prevent_destroy = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    project_name = "terraform_best_practices_bootstrap"
  }
}
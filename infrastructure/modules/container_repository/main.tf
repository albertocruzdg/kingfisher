resource "aws_ecr_repository" "api_container_repository" {
  name                 = var.repository_name
  image_tag_mutability = "MUTABLE"
}

resource "aws_ecr_lifecycle_policy" "api_container_repository" {
  repository = aws_ecr_repository.api_container_repository.name
  policy     = <<EOF
{
  "rules": [
    {
      "rulePriority": 1,
      "description": "Expire images older than 2 days",
      "selection": {
        "tagStatus": "untagged",
        "countType": "sinceImagePushed",
        "countUnit": "days",
        "countNumber": 2
      },
      "action": {
        "type": "expire"
      }
    }
  ]
}
EOF
}
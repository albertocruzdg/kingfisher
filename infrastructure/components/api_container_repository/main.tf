module "api_container_repository" {
  source          = "../../modules/container_repository"
  repository_name = "kingfisher/api"
}

output "api_container_repository_url" {
  value = module.api_container_repository.repository_url
}
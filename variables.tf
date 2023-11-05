variable "project_id" {
  description = "O ID do projeto GCP"
}

variable "region" {
  description = "A região para hospedar a instância do Cloud SQL"
  default     = "us-central1"
}

variable "postgres_password" {
  description = "A senha para o usuário PostgreSQL"
  sensitive   = true
}

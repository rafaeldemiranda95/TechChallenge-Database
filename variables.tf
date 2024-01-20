variable "project_id" {
  description = "O ID do projeto GCP"
  default     = "techchallenge-411721"
}

variable "region" {
  description = "A região para hospedar a instância do Cloud SQL"
  default     = "us-central1"
}

variable "postgres_password" {
  description = "A senha para o usuário PostgreSQL"
  sensitive   = true
  default     = "postgres"
}

variable "postgres_username" {
  description = "O nome de usuário para o banco de dados"
  default     = "postgres"
}

variable "techchallenge_pagamento_db_name" {
  description = "Nome do banco de dados para o microsserviço de Pagamento"
  default     = "TechChallenge-Pagamento"
}

variable "techchallenge_producao_db_name" {
  description = "Nome do banco de dados para o microsserviço de Produção"
  default     = "TechChallenge-Producao"
}

variable "techchallenge_pedido_db_name" {
  description = "Nome do banco de dados para o microsserviço de Pedido"
  default     = "TechChallenge-Pedido"
}

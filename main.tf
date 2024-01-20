provider "google" {
  project = var.project_id
  region  = var.region
}

# Instâncias do Banco de Dados
resource "google_sql_database_instance" "techchallenge_pagamento" {
  name             = "techchallenge-pagamento" # Nome corrigido
  database_version = "POSTGRES_15"
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "techchallenge_producao" {
  name             = "techchallenge-producao" # Nome corrigido
  database_version = "POSTGRES_15"
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "techchallenge_pedido" {
  name             = "techchallenge-pedido" # Nome corrigido
  database_version = "POSTGRES_15"
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}

# Bancos de Dados
resource "google_sql_database" "techchallenge_pagamento" {
  name     = var.techchallenge_pagamento_db_name
  instance = google_sql_database_instance.techchallenge_pagamento.name
}

resource "google_sql_database" "techchallenge_producao" {
  name     = var.techchallenge_producao_db_name
  instance = google_sql_database_instance.techchallenge_producao.name
}

resource "google_sql_database" "techchallenge_pedido" {
  name     = var.techchallenge_pedido_db_name
  instance = google_sql_database_instance.techchallenge_pedido.name
}

# Usuários dos Bancos de Dados
resource "google_sql_user" "techchallenge_pagamento" {
  name     = var.postgres_username
  instance = google_sql_database_instance.techchallenge_pagamento.name
  password = var.postgres_password
}

resource "google_sql_user" "techchallenge_producao" {
  name     = var.postgres_username
  instance = google_sql_database_instance.techchallenge_producao.name
  password = var.postgres_password
}

resource "google_sql_user" "techchallenge_pedido" {
  name     = var.postgres_username
  instance = google_sql_database_instance.techchallenge_pedido.name
  password = var.postgres_password
}

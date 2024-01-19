output "instance_name" {
  value = google_sql_database_instance.postgres_instance.name
}

output "instance_connection_name" {
  value = google_sql_database_instance.postgres_instance.connection_name
}

output "default_database_name" {
  value = google_sql_database.default.name
}

output "pagamento_database_name" {
  value = google_sql_database.techchallenge_pagamento.name
}

output "producao_database_name" {
  value = google_sql_database.techchallenge_producao.name
}

output "pedido_database_name" {
  value = google_sql_database.techchallenge_pedido.name
}

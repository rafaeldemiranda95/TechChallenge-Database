provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_sql_database_instance" "postgres_instance" {
  name             = "tech-challenge-db"
  database_version = "POSTGRES_15"
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "default" {
  name     = "tech-challenge-db"
  instance = google_sql_database_instance.postgres_instance.name
}

resource "google_sql_user" "default" {
  name     = var.postgres_username
  instance = google_sql_database_instance.postgres_instance.name
  password = var.postgres_password
}

resource "null_resource" "db_setup" {
  depends_on = [google_sql_database.default]

  # provisioner "local-exec" {
  #   command = "sh check_and_run_sql.sh ${google_sql_database_instance.postgres_instance.connection_name} ${var.postgres_password} ${google_sql_database.default.name}"
  # }

  triggers = {
    always_run = "${timestamp()}"
  }
}

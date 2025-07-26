# Configure the required Terraform provider for Google Cloud
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
  }

  required_version = ">= 1.5.0"
}

# Configure the Google Cloud provider using project and region from variables
provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
}

# Create a PostgreSQL database instance
resource "google_sql_database_instance" "postgres_instance" {
  name             = "django-db-instance"
  database_version = "POSTGRES_13"
  region           = var.region

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled    = true

      # WARNING: Allowing all IPs is insecure for production use
      authorized_networks {
        name  = "Allow all"
        value = "0.0.0.0/0"
      }
    }
  }
}

# Create a database within the instance
resource "google_sql_database" "django_db" {
  name     = var.db_name
  instance = google_sql_database_instance.postgres_instance.name
}

# Create a user for accessing the database
resource "google_sql_user" "django_user" {
  name     = var.db_user
  instance = google_sql_database_instance.postgres_instance.name
  password = var.db_password
}

# GCP Project ID
variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

# GCP Region to deploy resources
variable "region" {
  description = "Region for resource deployment"
  type        = string
  default     = "us-central1"
}

# Path to GCP service account credentials JSON file
variable "credentials_file" {
  description = "Path to service account credentials JSON file"
  type        = string
}

# PostgreSQL database name
variable "db_name" {
  default = "scores"
}

# PostgreSQL username
variable "db_user" {
  default = "django_user"
}

# PostgreSQL user password (sensitive for security)
variable "db_password" {
  sensitive = true
}

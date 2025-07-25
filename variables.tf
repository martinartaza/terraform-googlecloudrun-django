variable "project_id" {
  description = "django-cloudrun-mvp"
  type        = string
}

variable "region" {
  description = "Región para desplegar recursos"
  type        = string
  default     = "us-central1"
}

variable "credentials_file" {
  description = "/Users/smas/challenger/scores/terraform-googlecloudrun-django/django-cloudrun-mvp-e0afffa02d98.json"
  type        = string
}

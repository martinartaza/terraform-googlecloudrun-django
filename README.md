# Django Cloud Run Infra (con Terraform)

This repository contains the Terraform code needed to deploy a Django application to Google Cloud Run, using a PostgreSQL database in Cloud SQL.

### 🚀 Estado del proyecto

✅ Connecting Terraform to Google Cloud  
✅ Google Cloud Provider Initialization  
🔜 Next step: creating the PostgreSQL database
🔜 Future: Dockerized image deployment on Cloud Run

---

## 🛠️ Tools used

- [Terraform](https://www.terraform.io/) (v1.5+)
- [Google Cloud Platform](https://cloud.google.com/)
- Google Cloud Run (for the app Django)
- Google Cloud SQL (for PostgreSQL)

---

## 📂 Project structure

```markdown
    .
    ├── README.md
    ├── django-cloudrun-mvp-id.json
    ├── main.tf
    ├── notas.txt
    ├── terraform.tfvars
    └── variables.tf
```

## 🔐 Important: Security

This project uses a Google Cloud service account with a private JSON key.
⚠️ **Never upload that file to GitHub.**  
It is already ignored by the `.gitignore`, but please confirm that you haven't versioned it by mistake.

---

## 🧪 How to get started

1. Create a project in Google Cloud
2. Create a service account with `Editor` + `Service Account User` permissions
3. Download the JSON key
4. Export the environment variable:

```bash
export GOOGLE_APPLICATION_CREDENTIALS="/ruta/a/tu-clave.json"
```
5. Edit terraform.tfvars with the correct values
6. Inicializar Terraform:
```bash
terraform init
```
### Autor
Sebastián Artaza

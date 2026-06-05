
variable credentials_file {
  description = "My credentials"
  type        = string
  default     = "keys/dtc-de-course-498112-70c67d72de93.json"
}
variable region {
  description = "GCP region for the resources"
  type        = string
  default     = "us-central1"
}
variable "project_id" {
  description = "GCP project ID to deploy resources"
  type        = string
  default     = "dtc-de-course-498112"
}
variable "location" {
  description = "GCP region for the resources"
  type        = string
  default     = "us-central1"
}
variable "bq_dataset_name" {
  description = "Name of the BigQuery dataset to create"
  type        = string
  default     = "demo_example_dataset"
}

variable "gcs_bucket_name" {
  description = "Name of the GCS bucket to create"
  type        = string
  default     = "dtc-de-course-498112-demo-bucket"
}

variable "gcs_storage_class" {
  description = "Storage class for the GCS bucket"
  type        = string
  default     = "STANDARD"
}

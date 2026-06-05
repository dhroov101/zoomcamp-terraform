terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.35.0"
    }
  }
}

provider "google" {
  credentials = file("keys/dtc-de-course-498112-70c67d72de93.json")
  project = "dtc-de-course-498112"
  region  = "us-central1"
}


resource "google_storage_bucket" "demo-bucket" {
  name          = "dtc-de-course-498112-demo-bucket"
  location      = "US"
  force_destroy = true



  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
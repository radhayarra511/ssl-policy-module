resource "google_compute_ssl_policy" "elb" {
  custom_features = var.custom_features
  description = var.description
  min_tls_version = var.min_tls_version
  name = var.name
  profile = var.profile
  project = var.project
  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }
}


resource "google_compute_region_ssl_policy" "ilb" {
  provider = google-beta
  custom_features = var.custom_features
  description = var.description
  min_tls_version = var.min_tls_version
  name = var.name
  region  = var.region 
  profile = var.profile
  project = var.project
  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }
}

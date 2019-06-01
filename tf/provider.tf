variable "region" {}
variable "gcp_creds" {}
variable "project_id" {}

provider "google" {
  credentials = "${var.gcp_creds}"
  project     = "${var.project_id}"
  region      = "${var.region}"
}

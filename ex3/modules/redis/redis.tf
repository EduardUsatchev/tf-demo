resource "helm_release" "example" {
  name       = var.release_name
  namespace = var.env
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "redis"
  version    = "6.0.1"

  set {
    name  = "metrics.enabled"
    value = "true"
  }
}

variable "release_name" {default = "my-release"}
variable "env" {default = "dev"}
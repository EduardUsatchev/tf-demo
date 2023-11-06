resource "helm_release" "example" {
  name       = var.release_name
  namespace = var.env
  repository = "oci://registry-1.docker.io/bitnamicharts"
  chart      = "redis"

  set {
    name  = "metrics.enabled"
    value = "true"
  }
}

variable "release_name" {default = "my-release"}
variable "env" {default = "dev"}
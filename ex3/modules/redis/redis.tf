resource "helm_release" "example" {
  name       = var.release_name
  namespace = var.env
  repository = var.registry
  chart      = "redis"

  set {
    name  = "metrics.enabled"
    value = "true"
  }
}

variable "registry" {
  default = "oci://registry-1.docker.io/bitnamicharts"
}
variable "release_name" {default = "my-release"}
variable "env" {default = "dev"}
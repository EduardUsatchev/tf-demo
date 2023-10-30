resource "kubernetes_service" "app" {
  metadata {
    name = "app"
    namespace = var.env
  }

  spec {
    type = "NodePort"
    selector = {
      app = "app"
    }

    port {
      port        = 80
      target_port = 80
    }
  }
}
resource "helm_release" "this" {
  name       = var.release_name
  namespace  = var.namespace

  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = var.chart_version

  values     = [file("${path.module}/values.yaml")]
}
locals {
  context = var.context
}

module "submodule" {
  source = "./modules/submodule"

  message = "Hello, submodule"
}
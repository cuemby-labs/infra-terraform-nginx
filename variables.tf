variable "release_name" {
  description = "The name of the Helm release."
  type        = string
  default     = "ingress-nginx"
}

variable "namespace" {
  description = "The namespace where the Helm release will be installed."
  type        = string
  default     = "kube-system"
}

variable "version" {
  description = "The version of the ingress-nginx Helm chart."
  type        = string
  default     = "4.11.2"
}
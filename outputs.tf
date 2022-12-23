output "cluster_config" {
  value = base64decode(vultr_kubernetes.k8.kube_config)
  sensitive = true
}
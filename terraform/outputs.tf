output "cluster_endpoint" {
  description = "EKS API server endpoint URL"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "Provisioned EKS Cluster Name"
  value       = module.eks.cluster_name
}

output "configure_kubectl" {
  description = "CLI instruction to update local kubeconfig"
  value       = "aws eks --region ${var.aws_region} update-kubeconfig --name ${module.eks.cluster_name}"
}

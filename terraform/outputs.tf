output "cluster_name" {
  value       = module.eks.cluster_id
  description = "The name of the EKS cluster"
}
output "cluster_endpoint" {
  value       = module.eks.cluster_endpoint
  description = "The endpoint of the EKS cluster"
}
output "cluster_status" {
  value       = module.eks.cluster_status
  description = "The status of the EKS cluster"
}
output "ecr_repository_url" {
  value       = module.ecr.repository_url
  description = "The URL of the ECR repository"
}
output "ecr_repository_name" {
  value       = module.ecr.repository_name
  description = "The ARN of the ECR repository"
}
output "cluster_platform_version" {
  value       = module.eks.cluster_platform_version
  description = "The platform version of the EKS cluster"
}

# Kubectl Configuration
output "configure_kubectl" {
  description = "Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = "aws eks update-kubeconfig --name ${module.eks.cluster_name} --region ${var.region}"
}
#Variables for Terraform configuration
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "main-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "tags" {
  description = "Tag to identify resources"
  type        = string
  default     = "gitops-actions"
}

variable "ecr_name" {
  description = "The name of the ECR repository"
  type        = string
  default     = "gitops-actions-repo"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "gitops-actions-cluster"
}
variable "k8s_version" {
  description = "The Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.31"
}

variable "node_instance_types" {
  description = "List of instance types for the EKS worker nodes"
  type        = list(string)
  default     = ["t2.micro"]
}

variable "node_desired_capacity" {
  description = "The desired number of worker nodes"
  type        = number
  default     = 2
}
variable "node_max_capacity" {
  description = "The maximum number of worker nodes"
  type        = number
  default     = 3
}
variable "node_min_capacity" {
  description = "The minimum number of worker nodes"
  type        = number
  default     = 2
}

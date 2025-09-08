module "ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "2.3.0"

  repository_name    = var.ecr_name
  registry_scan_type = "BASIC"
  repository_type    = "private"

  create_registry_policy = false

  tags = {
    Terraform = "true"
  }
}
module "vpc_test" {
  source = "../terraform_aws_vpc"
  project_name = var.project_name
  env = var.env
  vpc_cicr = var.cidr_block
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags
}
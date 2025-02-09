locals {
resource_name="${var.project_name}-${var.env}"
azs=slice(data.aws_availability_zones.name.names,0,2)
}




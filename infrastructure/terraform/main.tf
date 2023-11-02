variable "region" {
  type = string
}

output "region" {
  value = var.region
}

data "aws_availability_zones" "available" {}
output "availability_zones" {
  value = local.azs
}
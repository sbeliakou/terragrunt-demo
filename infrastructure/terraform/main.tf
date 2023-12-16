terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

provider "aws" {
  region = var.region
}

variable "region" {
  type = string
}

locals {
  azs = slice(data.aws_availability_zones.available.names, 0, 3)
}

output "region" {
  value = var.region
}

data "aws_availability_zones" "available" {}
output "availability_zones" {
  value = local.azs
}
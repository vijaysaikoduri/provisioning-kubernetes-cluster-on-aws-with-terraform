terraform {
  required_version = ">= 0.12"
}

provider "aws" {
region = var.aws_region
  access_key = "AKIA6MRRPCE55OICYL6Y"
  secret_key = "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"
}

data "aws_availability_zones" "available" {}

# Not required: currently used in conjunction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {}

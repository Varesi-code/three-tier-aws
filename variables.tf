#define the variables and their types. NOT their values. --> /env/dev.tfvars
#initialise the dev workspace with "terraform workspace new dev" and then terraform init
#workspaces do not share state or specific resources. as ${workspace}.tfvars
#sooooooooo, whenever you run a command in this terraform config, you should use the flag in the cli
#e.g.     terraform validate --var-file=env/dev.tfvars


variable "aws_region" {
  description = "AWS Region"
}

variable "vpc_cidr_block" {
  description = "Main VPC CIDR Block"
}

variable "az_public_subnet" {
  type = map(string)
}

variable "az_private_subnet" {
  type = map(string)
}

variable "az_database_subnet" {
  type = map(string)
}

variable "availability_zones" {
  type = list(string)
}
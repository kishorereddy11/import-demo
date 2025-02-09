variable "project_name" {
  default = "cape"
}

variable "env" {
  default = "dev"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "common_tags" {
  default = {
    project = "Cape"
    Env ="Dev"
    terraform= true
  }
}

variable "vpc_tags"{
  default = {
purpose = "testing"
  }
  
}

variable "public_subnet_cidrs" {
  default = ["10.0.0.0/24","10.0.2.0/24"]
}

variable "public_subnet_tags" {
  default = {}
}

variable "private_subnet_cidrs" {
  default = ["10.0.1.0/24","10.0.1.0/24"]
}

variable "private_subnet_tags" {
  default = {}
}
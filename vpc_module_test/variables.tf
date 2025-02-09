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
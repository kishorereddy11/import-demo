#empty means it is mandatory
variable "vpc_cicr" {
  
}

variable "project_name" {
  
}

variable "env" {
  
}

variable "enable_dns_hostnames" {
  default = true
}

#mandatory
variable "common_tags" {
  type = map
  #default = {}

}

variable "vpc_tags" {
  default = {}
}

variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.public_subnet_cidrs)==2
    error_message = "please provide 2 valid subnet CIDR"
  }
}

variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs)==2
    error_message = "please provide 2 valid subner CIDR"
  }
}

variable "public_subnet_tags" {
  default = {}
}

variable "private_subnet_tags" {
  default = {}
}
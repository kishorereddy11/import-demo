resource "aws_vpc" "main" {
  cidr_block = var.vpc_cicr
  instance_tenancy = "default"
  enable_dns_hostnames = var.enable_dns_hostnames

tags = merge(var.common_tags,
 var.vpc_tags,
{
    Name="${var.project_name}-${var.env}"
})

}


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags =merge(var.common_tags
  ,var.igw_tags,{
    Name = "${var.project_name}-${var.env}" 
  })
}


# resource "aws_subnet" "public_subnet" {
#  count= length(var.public_subnet_cidrs) 
#   vpc_id = aws_vpc.main.id
#   cidr_block = var.public_subnet_cidrs[count.index]
# }

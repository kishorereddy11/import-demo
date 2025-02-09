resource "aws_vpc" "main" {
  cidr_block = var.vpc_cicr
  instance_tenancy = "default"
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = merge(
    var.common_tags,
    var.vpc_tags,
    {
        Name = local.resource_name
    }
  )
}



resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags =merge(var.common_tags
  ,var.igw_tags,{
    Name = "${var.project_name}-${var.env}" 
  })
}


#cpae-dev-us-east-1a
resource "aws_subnet" "public_subnet" {
 count= length(var.public_subnet_cidrs) 
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_cidrs[count.index]
  availability_zone = local.azs[count.index]
  map_public_ip_on_launch = true

tags = merge(var.common_tags,
var.public_subnet_tags, {
  Name ="${local.resource_name}-public-${local.azs[count.index]}"
})
}


resource "aws_subnet" "private_subnet" {
  count = length(var.private_subnet_cidrs)
  vpc_id = aws_vpc.main.id
  cidr_block = var.private_subnet_cidrs[count.index]
  availability_zone = local.azs[count.index]
  map_public_ip_on_launch = false

  tags = merge(var.common_tags,var.private_subnet_tags,
  {
    Name="${local.resource_name}-private-${local.azs[count.index]}"
  })
}

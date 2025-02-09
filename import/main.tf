import {
  id = "vpc-09dcaacd61879121d"
  to = aws_vpc.name
}

resource "aws_vpc" "name" {
#   name = "vpc"
}

resource "aws_subnet" "subnet" {
  cidr_block = "10.0.0.0/28"
  vpc_id = "vpc-09dcaacd61879121d"
}

import {
  id="subnet-0145ce97783ce05bb"
  to  = aws_subnet.subnet
}
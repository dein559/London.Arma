/*
resource "aws_route_table" "private-E" {
  vpc_id = aws_vpc.app1-vpc-E-Sydney.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.Sydney-nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private-E"
  }
}

resource "aws_route_table" "public-E" {
  vpc_id = aws_vpc.app1-vpc-E-Sydney.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.sydney-igw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public-E"
  }
}

resource "aws_route_table_association" "private-ap-southeast-2a" {
  subnet_id      = aws_subnet.private-ap-southeast-2a.id
  route_table_id = aws_route_table.private-E.id
}

resource "aws_route_table_association" "private-ap-southeast-2c" {
  subnet_id      = aws_subnet.private-ap-southeast-2c.id
  route_table_id = aws_route_table.private-E.id
}


#public

resource "aws_route_table_association" "public-ap-southeast-2a" {
  subnet_id      = aws_subnet.public-ap-southeast-2a.id
  route_table_id = aws_route_table.public-E.id
}

resource "aws_route_table_association" "public-ap-southeast-2c" {
  subnet_id      = aws_subnet.public-ap-southeast-2c.id
  route_table_id = aws_route_table.public-E.id
}
*/
#IGW for London
resource "aws_internet_gateway" "london-igw" {
  vpc_id = aws_vpc.app1-vpc-C-london.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Darkness"
  }
}


/*
#IGW for Tokyo
resource "aws_internet_gateway" "Tokyo-igw" {
  vpc_id = aws_vpc.app1-vpc-A-Tokyo.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Darkness"
  }
}

#IGW for New York
resource "aws_internet_gateway" "Newyork-igw" {
  vpc_id = aws_vpc.app1-vpc-B-NY.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Darkness"
  }
}

#IGW for Sao Paulo
resource "aws_internet_gateway" "Saopaulo-igw" {
  vpc_id = aws_vpc.app1-vpc-D-Sao-Paulo.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Darkness"
  }
}

#IGW for Sydney
resource "aws_internet_gateway" "Sydney-igw" {
  vpc_id = aws_vpc.app1-vpc-E-Sydney.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Darkness"
  }
}

#IGW for Hong Kong
resource "aws_internet_gateway" "HongKong-igw" {
  vpc_id = aws_vpc.app1-vpc-F-Hong-Kong.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Darkness"
  }
}


#IGW for California
resource "aws_internet_gateway" "California-igw" {
  vpc_id = aws_vpc.app1-vpc-G-California.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Darkness"
  }
}
*/

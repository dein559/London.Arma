#These are   for  public

resource "aws_subnet" "public-eu-west-2a" {
  vpc_id                  = aws_vpc.app1-vpc-C-london.id
  cidr_block              = "10.27.1.0/24"
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-west-2a"
    Service = "application-C"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-eu-west-2b" {
  vpc_id                  = aws_vpc.app1-vpc-C-london.id
  cidr_block              = "10.27.2.0/24"
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-west-2b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


resource "aws_subnet" "public-eu-west-2c" {
  vpc_id                  = aws_vpc.app1-vpc-C-london.id
  cidr_block              = "10.27.3.0/24"
  availability_zone       = "eu-west-2c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-west-2c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

#these are for private
resource "aws_subnet" "private-eu-west-2a" {
  vpc_id            = aws_vpc.app1-vpc-C-london.id
  cidr_block        = "10.27.11.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name    = "private-eu-west-2a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-eu-west-2b" {
  vpc_id            = aws_vpc.app1-vpc-C-london.id
  cidr_block        = "10.27.12.0/24"
  availability_zone = "eu-west-2b"

  tags = {
    Name    = "private-eu-west-2b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


resource "aws_subnet" "private-eu-west-2c" {
  vpc_id            = aws_vpc.app1-vpc-C-london.id
  cidr_block        = "10.27.13.0/24"
  availability_zone = "eu-west-2c"

  tags = {
    Name    = "private-eu-west-2c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

#London nat and eip
resource "aws_eip" "london-eip" {
  vpc = true

  tags = {
    Name = "nat"
  }
}
resource "aws_nat_gateway" "london-nat" {
  allocation_id = aws_eip.london-nat.id
  subnet_id     = aws_subnet.public-eu-west-2a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.london-igw]
}


/*
#Tokyo nat and eip
resource "aws_eip" "tokyo-eip" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "tokyo-nat" {
  allocation_id = aws_eip.tokyo-nat.id
  subnet_id     = aws_subnet.public-ap-southeast-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.tokyo-igw]
}

#New York nat and eip
resource "aws_eip" "NewYork-eip" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "NewYork-nat" {
  allocation_id = aws_eip.NewYork-nat.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.NewYork-igw]
}

#Sao Paulo nat and eip
resource "aws_eip" "saopaulo-eip" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "saopaulo-nat" {
  allocation_id = aws_eip.saopaulo-nat.id
  subnet_id     = aws_subnet.public-sa-east-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.saopaulo-igw]
}

#Sydney nat and eip
resource "aws_eip" "sydney-eip" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "sydney-nat" {
  allocation_id = aws_eip.sydney-nat.id
  subnet_id     = aws_subnet.public-ap-northeast-2a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.sydneyigw]
}

#Hong Kong nat and eip
resource "aws_eip" "hongkong-eip" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "hongkong-nat" {
  allocation_id = aws_eip.hongkong-nat.id
  subnet_id     = aws_subnet.public-ap-east-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.hongkong-igw]
}

#California nat and eip
resource "aws_eip" "california-eip" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "california-nat" {
  allocation_id = aws_eip.california-nat.id
  subnet_id     = aws_subnet.public-us-west-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.california-igw]
}
*/
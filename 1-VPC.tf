# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "app1-vpc-C-london" {
  cidr_block = "10.27.0.0/16"

  tags = {
    Name = "London_app1"
    Service = "application-C"
    Owner = "Darknesses"
    Planet = "Mustafar"
  }
}

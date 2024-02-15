resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = "us-east-1a"  # Adjust AZ as needed
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = "us-east-1b"  # Adjust AZ as needed
}

resource "aws_instance" "public_instance" {
 
  count         = var.public_instance_count 
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = var.key_pair_name
  user_data     = var.user_data
  associate_public_ip_address = true
  tags = {
     Name = "instance-${count.index + 1}"

}
lifecycle{
        create_before_destroy = true
}
}

resource "aws_instance" "private_instance" {
  count         = var.private_instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.private_subnet.id
  key_name      = var.key_pair_name
  user_data     = var.user_data
  tags = {
    Name = "instance-${count.index + 1}"
  }
}

output "public_ip_addresses" {
  value = aws_instance.public_instance.*.public_ip
}

output "private_ip_addresses" {
  value = aws_instance.private_instance.*.private_ip
}

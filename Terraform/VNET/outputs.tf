output "vpc_id_out" {
    value = aws_vpc.first-vpc.id // outputted vpc id so it can be passed to the ec2 module in the root main.tf
}

output "subnet_id_out" {
    value = aws_subnet.subnet_1.id // outputted subnet id so it can be passed to the ec2 module in the root main.tf
}
provider "aws" {
    region = "eu-west-2"
    alias  = "aws-uk"
    shared_credentials_files = ["~/.aws/credentials"]
}

resource "aws_security_group" "allow-ssh" {
  name        = "allow-ssh"
  description = "Allow ssh traffic"
  vpc_id      = var.vpc_id_in

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-ssh"
  }
}

resource "aws_security_group" "allow-Jenkins" {
  name        = "allow-Jenkins"
  description = "Allow Jenkins traffic"
  vpc_id      = var.vpc_id_in

  ingress {
    description = "Connect to Jenkins"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-Jenkins"
  }
}

resource "aws_instance" "Jenkins" {
  provider                    = "aws.aws-uk"
  for_each                    = var.zone
  availability_zone           = each.value
  ami                         = var.ami-uk
  instance_type               = var.type
  key_name                    = "DevKey"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow-ssh.id, aws_security_group.allow-Jenkins.id]
  depends_on                  = [aws_security_group.allow-ssh, aws_security_group.allow-Jenkins]
  subnet_id                   = var.subnet_id_in

  lifecycle {
    prevent_destroy = true
  }

  timeouts {
    create = "5m"
    delete = "2h"
  }

  tags = {
    Name = "Jenkins"
  }
}
resource "aws_instance" "K8" {
  provider                    = "aws.aws-uk"
  for_each                    = var.zone
  availability_zone           = each.value
  ami                         = var.ami-uk
  instance_type               = var.type
  key_name                    = "DevKey"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow-ssh.id]
  depends_on                  = [aws_security_group.allow-ssh]
  subnet_id                   = var.subnet_id_in


  lifecycle {
    prevent_destroy = false
  }

  timeouts {
    create = "5m"
    delete = "2h"
  }
  tags = {
    Name = "K8"
  }
}

resource "aws_instance" "SwarmManager" {
  provider                    = "aws.aws-uk"
  for_each                    = var.zone
  availability_zone           = each.value
  ami                         = var.ami-uk
  instance_type               = "t2.micro"
  key_name                    = "DevKey"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow-ssh.id]
  depends_on                  = [aws_security_group.allow-ssh]
  subnet_id                   = var.subnet_id_in

  lifecycle {
    prevent_destroy = false
  }

  timeouts {
    create = "5m"
    delete = "2h"
  }

  tags = {
    Name = "SwarmManager"
  }
}

resource "aws_instance" "SwarmWorker" {
  provider                    = "aws.aws-uk"
  for_each                    = var.zone
  availability_zone           = each.value
  ami                         = var.ami-uk
  instance_type               = "t2.micro"
  key_name                    = "DevKey"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow-ssh.id]
  depends_on                  = [aws_security_group.allow-ssh]
  subnet_id                   = var.subnet_id_in

  lifecycle {
    prevent_destroy = false
  }

  timeouts {
    create = "5m"
    delete = "2h"
  }

  tags = {
    Name = "SwarmWorker"
  }
}
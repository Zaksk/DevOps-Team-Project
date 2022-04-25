provider "aws" {
    region = "eu-west-2"
    alias  = "aws-uk"
}

variable "ami-uk" {
    description = "machine image uk"
    default     = "ami-0015a39e4b7c0966f"
}

variable "type" {
    default = "t2.small"
}

variable "zone" {
    description = "map of availability zones for eu-west-2"
    default     = {
        1 = "eu-west-2a"
    }
}

resource "aws_instance" "Jenkins" {
    provider = "aws.aws-uk"
    for_each = var.zone
    availability_zone = each.value
    ami           = var.ami-uk
    instance_type = var.type

    lifecycle {
        prevent_destroy = false
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
    provider = "aws.aws-uk"
    for_each = var.zone
    availability_zone = each.value
    ami           = var.ami-uk
    instance_type = var.type

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
    provider = "aws.aws-uk"
    for_each = var.zone
    availability_zone = each.value
    ami           = var.ami-uk
    instance_type = "t2.micro"

    lifecycle {
        prevent_destroy = true
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
    provider = "aws.aws-uk"
    for_each = var.zone
    availability_zone = each.value
    ami           = var.ami-uk
    instance_type = "t2.micro"

    lifecycle {
        prevent_destroy = true
    }

    timeouts {
        create = "5m"
        delete = "2h"
    }
    tags = { 
        Name = "SwarmWorker"
    }
}
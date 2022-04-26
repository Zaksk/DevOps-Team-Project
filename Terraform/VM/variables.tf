variable "ami-uk" {
  description = "machine image uk"
  default     = "ami-0015a39e4b7c0966f"
}

variable "type" {
  default = "t2.small"
}

variable "zone" {
  description = "map of availability zones for eu-west-2"
  default = {
    1 = "eu-west-2a"
  }
}
variable "vpc_id_in" {
  description = "The ID of the VPC to associate resources to"
}

variable "subnet_id_in" {
  description = "The ID of the subnet to put the EC2 in"
}
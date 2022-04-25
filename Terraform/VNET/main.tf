resource "aws_instance" "Jenkins" {
    name                = "${var.project_name}-vnet"
    address_space       = ["      "]
    location            = var.location
    resource_group_name = var.group_name
}


resource "aws_vpc" "main" {
    name                 = "internal"
    resource_group_name  = var.group_name
    virtual_network_name = aws_virtual_network.main.name
    address_prefixes     = ["     "]
}

resource "aws_network_interface" "main" {
    count               = var.vm_count

    name                = "${var.project_name}-nic-${count.index}"
    location            = var.location
    resource_group_name = var.group_name
}
    ip_configuration {
        name                          = "internal-${count.index}"
        subnet_id                     = #check aws for id #
        private_ip_address_allocation = # check aws for these details #
    }
}    

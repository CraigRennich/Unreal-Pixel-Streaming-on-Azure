/*
## variables
variable "base_name" {
  description = "the base name for the resources"
  type        = string
}

variable "resource_group" {
  description = "The RG for the NSG"
  type = object({
    id     = string
    location = string
    name   = string
  })
}

variable "nsg_name"{
    type = string
}
variable "security_rule_name"{
    type = string
}
variable "security_rule_priority"{
    type = string
}
variable "security_rule_direction"{
    type = string
}
variable "security_rule_access"{
    type = string
}
variable "security_rule_protocol"{
    type = string
}
variable "security_rule_source_port_range"{
    type = string
}
variable "security_rule_destination_port_range"{
    type = string
}
variable "security_rule_source_address_prefix"{
    type = string
}
variable "security_rule_destination_address_prefix"{
    type = string
}

resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name

  security_rule {
    name                       = var.security_rule_name
    priority                   = var.security_rule_priority
    direction                  = var.security_rule_direction
    access                     = var.security_rule_access
    protocol                   = var.security_rule_protocol
    source_port_range          = var.security_rule_source_port_range
    destination_port_range     = var.security_rule_destination_port_range
    source_address_prefix      = var.security_rule_source_address_prefix
    destination_address_prefix = var.security_rule_destination_address_prefix
  }
}
*/
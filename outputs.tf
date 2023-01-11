data "azurerm_public_ip" "test" {
  name                = "${var.name}-public-ip"
  resource_group_name = "${var.name}-rg"
}


output "public_ip" {
  value = data.azurerm_public_ip.test.ip_address
}
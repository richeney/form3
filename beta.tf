resource "azurerm_resource_group" "beta" {
  provider = azurerm.beta
  name     = "form3-beta"
  location = "uksouth"
}

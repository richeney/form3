resource "azurerm_resource_group" "alpha" {
  provider = azurerm.alpha
  name     = "form3-alpha"
  location = "uksouth"
}

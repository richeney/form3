terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.93"
    }
  }
}

provider "azurerm" {
  alias = "alpha"

  tenant_id       = "72f988bf-86f1-41af-91ab-2d7cd011db47"
  subscription_id = "2ca40be1-7e80-4f2b-92f7-06b2123a68cc"
  client_id       = "5a3eb436-a178-4e7c-a4bf-9f2eab633c9b"
  client_secret   = "<redacted>"

  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }

  storage_use_azuread = true
}

provider "azurerm" {
  alias = "beta"

  tenant_id       = "72f988bf-86f1-41af-91ab-2d7cd011db47"
  subscription_id = "2ca40be1-7e80-4f2b-92f7-06b2123a68cc"
  client_id       = "fbd821cc-c0fb-4541-add7-665b6cc0c8a3"
  client_secret   = "<redacted>"

  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }

  storage_use_azuread = true
}

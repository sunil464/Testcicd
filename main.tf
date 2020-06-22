
provider "azurerm" {
  subscription_id = "ae3cae0d-6699-4593-bb04-de13fdc54b89"
  client_id       = "2e172af4-3511-4839-b7cf-985488197207"
  client_secret   = "q8YJWNI3k.v2nF~A~-wDZDTcB3453~x.~_"
  tenant_id       = "f47cf29e-63b5-44ae-ab92-bf0de6383022"

  version = "=2.0.0"
  features {}
}

resource "azurerm_resource_group" "myterraformgroup" {
  name     = "Test1"
  location = "eastus2"

  tags = {
    environment = "Terraform Demo"
  }
}

# Create virtual network
resource "azurerm_virtual_network" "myterraformnetwork" {
  name                = "myVnet"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus2"
  resource_group_name = azurerm_resource_group.myterraformgroup.name

  tags = {
    environment = "Terraform Demo"
  }
}
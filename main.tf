
provider "azurerm" {
  subscription_id = "ae3cae0d-6699-4593-bb04-de13fdc54b89"
  client_id       = "2e172af4-3511-4839-b7cf-985488197207"
  client_secret   = "q8YJWNI3k.v2nF~A~-wDZDTcB3453~x.~_"
  tenant_id       = "f47cf29e-63b5-44ae-ab92-bf0de6383022"

  version = "=2.0.0"
  features {}
}

resource "azurerm_resource_group" "myterraformgroup" {
  name     = "Testcicd"
  location = "Central us"

  tags = {
    environment = "Terraform Demo"
  }
}


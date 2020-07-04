provider "azurerm" {
  version         = "~> 2.5.0"
  subscription_id = "ebd9bc3c-ddd9-47fb-93d7-fbabcd5e520b"
  tenant_id       = "b4f4cfb9-6268-48f6-8f8a-2e8891d5add1"
  features {}
}

provider "null" {
   version = "~> 2.1"
}

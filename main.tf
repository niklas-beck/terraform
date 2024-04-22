terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "Test"
    storage_account_name = "test"
    container_name       = "test"
    key                  = "test.tfstate"
    use_oidc             = true
  }

}

provider "azurerm" {
  features {}
  use_oidc = true
}
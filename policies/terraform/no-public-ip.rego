package terraform.azure.network

deny[msg] {
  input.resource_type == "azurerm_public_ip"
  msg := sprintf("Public IPs are not allowed: %s", [input.resource_name])
}

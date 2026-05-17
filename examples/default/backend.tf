terraform {
  # Backend values are intentionally empty here.
  # CI provides them via `terraform init -backend-config=...` (see
  # .github/workflows/test-default-example.yml). For local runs, copy
  # backend.hcl.example to backend.hcl, fill it in, then:
  #   terraform init -backend-config=backend.hcl
  backend "azurerm" {
    use_azuread_auth = true
  }
}

module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "sandbox-account01@gmail.com"
    AccountName  = "sandbox"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "sandbox-account01@gmail.com"
    SSOUserFirstName = "sandbox"
    SSOUserLastName  = "account"
  }

  account_tags = {
    "ABC:Owner"       = "sandbox-account01@gmail.com"
    "ABC:Environment" = "Test"
  }

  change_management_parameters = {
    change_requested_by = "rihem lahmar"
    change_reason       = "provisioning a new sandbox account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customizations"
}

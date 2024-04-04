# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_001" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "sandboxaccount001@gmail.com"
    AccountName  = "sandbox-account-001"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "ou-6vtm-lh4mw0p2"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "sandboxaccount001@gmail.com"
    SSOUserFirstName = "sandbox"
    SSOUserLastName  = "account"
  }

  account_tags = {
    "ABC:Owner"       = "sandboxaccount001@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Test"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "rihem lahmar"
    change_reason       = "testing the sandbox account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customizations"
}

# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "network_test_account_001" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "network-test-account-001@gmail.com"
    AccountName  = "network-test-account-001"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "test(ou-6vtm-3fim7cms)"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "network-test-account-001@gmail.com"
    SSOUserFirstName = "network"
    SSOUserLastName  = "test"
  }

  account_tags = {
    "ABC:Owner"       = "network-test-account-001@gmail.com"
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
    change_reason       = "testing the infra network test account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customizations"
}

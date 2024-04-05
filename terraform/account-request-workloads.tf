# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "workloads_data_lake_test_account_001" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "workloads_data_lake-test-account-001@gmail.com"
    AccountName  = "workloads_data_lake-test-account-001"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "test(ou-6vtm-7jvjw3vu)" 
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "workloads_data_lake-test-account-001@gmail.com"
    SSOUserFirstName = "workloads_data_lake"
    SSOUserLastName  = "test"
  }

  account_tags = {
    "ABC:Owner"       = "workloads_data_lake-test-account-001@gmail.com"
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
    change_reason       = "testing the workloads data lake  test account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customizations"
}

module "workloads_data_lake_prod_account_001" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "workloads_data_lake-prod-account-001@gmail.com"
    AccountName  = "workloads_data_lake-prod-account-001"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "prod(ou-6vtm-ns7y1v3m)" 
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "workloads_data_lake-prod-account-001@gmail.com"
    SSOUserFirstName = "workloads_data_lake"
    SSOUserLastName  = "prod"
  }

  account_tags = {
    "ABC:Owner"       = "workloads_data_lake-prod-account-001@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Prod"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "rihem lahmar"
    change_reason       = "testing the workloads data lake prod account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customizations"
}

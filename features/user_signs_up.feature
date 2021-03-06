Feature: User can sign up
  as a User
  In order to be able to order products
  there need to be a create account function

  Scenario: User creates an account
    Given User visits the site
    When User clicks on the "Sign up" button
    And He fills in "name" with "Holger"
    And He fills in "password" with "password1"
    And He fills in "password_confirmation" with "password1"
    And He clicks "submit"
    And He sees message "Successfully created account for Holger"

  Scenario: User did not enter all fields
    Given User visits the site
    When User clicks on the "Sign up" button
    And He fills in "password" with "password1"
    And He fills in "password_confirmation" with "password1"
    And He clicks "submit"
    And He sees message "Unsuccessful"

  Scenario: User did not enter both password fields
    Given User visits the site
    When User clicks on the "Sign up" button
    And He fills in "name" with "Holger"
    And He fills in "password_confirmation" with "password1"
    And He clicks "submit"
    And He sees message "Unsuccessful"

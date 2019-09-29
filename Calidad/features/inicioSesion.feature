Feature: Login into system
   As a User
   I want to login into the system
   So I can read the children letters

   Scenario: Login into system
    Given I am on the homepage
    When I click on "Iniciar sesion" link
    And I fill the mail field with "valecy@gmail.com"
    And I fill the password field with "valeria"
    And I click on "Aceptar" button
    Then I see the "Bienvenido" title


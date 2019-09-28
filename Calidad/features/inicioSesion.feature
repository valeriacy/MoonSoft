Feature: Error section Bibliografía
   As a Student
   I want to see in the general report the error section Bibliografía
   So I know what I need to fix in my document

   Scenario: Showing the Bibliography page errors validating all possible errors (two errors)
    Given I am on the homepage
    And I upload the "Perfil.pdf" file 
    And I go straight forward trough the calibration setup  
    When I click on the "Bibliografía" section
    Then the error message "Por favor verficar: Página web siga el patrón «APELLIDO, Nombres (Año). “Título. Subtítulo”. En: <dirección electrónica completa>, (fecha de consulta dd/mm/aaaa).»." in my essay should appear
    And the error message "Por favor verficar: La referencia bibliográfica siga las normas de presentación según la Guía." in my essay should appear

Feature: Logging into the Demo Website

  Scenario Outline: Verify that the user can login into the website
    Given I open website in a browser
    When I login with credentials using record <record>
    Then Flight page is displayed

    Examples:
    | record  |
    | record1 |
    | record2 |
    | record3 |
    | record4 |
Feature: Logging into the Demo Website
  @smoke_test
  Scenario Outline: Verify that the user can login into the website
    Given I open website in a browser
    When I login with credentials <username> and <password>
    Then Flight page is displayed

    Examples:
    | username | password |
    | selenium | selenium |
    | tutorial | tutorial |
    | selenium | selenium |
    | tutorial | tutorial |


Feature: A Engalnd user can find whether he will get help from NHS using checker tool
  

  @test4
  Scenario: Visit tool and provide circumstances into the tool
    
    Given I go to url 'https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start'
    And I Click  the 'Start now' button
    Then I should be on the 'Which country do you live in?' page
    When I Select 'Northern Ireland' radio-button 
    And I click the 'Next' button
    Then I should be on the 'You cannot use this service because you live in Northern Ireland' page
    And I close the browser

Feature: As cicitzen of the UK
         I need to know what help I can get with NHS costs
         So that I cna get the treatment I need
         A Engalnd user can find whether he will get help from NHS using checker tool
  
  @test5
  Scenario: UK user can visit tool and provide circumstances -Clicking next button without selecting the value
    
    Given I go to url 'https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start'
    And I Click  the 'Start now' button
    Then I should be on the 'Which country do you live in?' page
    And I click the 'Next' button
    Then I should be on the Error page
    
    @test5
    Scenario: UK user can visit tool and provide circumstances with invalid DOB
    
    Given I go to url 'https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start'
    And I Click  the 'Start now' button
    Then I should be on the 'Which country do you live in?' page
    When I Select 'England' radio-button 
    And I click the 'Next' button
    Then I should be on the 'Is your GP practice in Scotland or Wales?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Which country is your dental practice in?' page
    When I Select 'Wales' radio-button
    And I click the 'Next' button
    Then I should be on the 'What is your date of birth?' page
    When I Enter invalid DOB
    And I click the 'Next' button
    Then I should be on the doberror page
    And I close the browser
   
    
    #Scenario: UK user can visit tool and provide circumstances and session timeout occurs
  
    #Given I go to url 'https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start'
    #And I Click  the 'Start now' button
    #Then I should be on the 'Which country do you live in?' page
    #When I Select 'England' radio-button 
    #And the session idle for more than 30 minuntes
    #Then I should be on the timeouterror page
    
Feature: As cicitzen of the UK
         I need to know what help I can get with NHS costs
         So that I cna get the treatment I need
         A Engalnd user can find whether he will get help from NHS using checker tool

  @test2
  Scenario: Scotland user can visit tool and provide circumstances into the tool-happy flow -Married
    Given I go to url 'https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start'
    And I Click  the 'Start now' button
    Then I should be on the 'Which country do you live in?' page
    When I Select 'Scotland' radio-button 
    And I click the 'Next' button
    Then I should be on the 'Do you live in the Highlands and Islands?' page
    When I Select 'Yes' radio-button
    And I click the 'Next' button
    Then I should be on the 'Which country is your dental practice in?' page
    When I Select 'Scotland' radio-button
    And I click the 'Next' button
    Then I should be on the 'What is your date of birth?' page
    When I Enter valid DOB
    And I click the 'Next' button
    Then I should be on the 'Do you live with a partner?' page
    When I Select 'Yes' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you or your partner claim any benefits or tax credits?' page
    When I Select 'Yes' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you or your partner get paid Universal Credit?' page
    When I Select 'Yes, we receive Universal Credit payments' radio-button
    And I click the 'Next' button
    Then I should be on the 'As part of your joint Universal Credit, do you have any of these?' page
    When I Select 'Yes' radio-button
    And I click the 'Next' button
    Then I should be on the 'Did you and your partner have a combined take-home pay of £935 or less in your last Universal Credit period?' page
    When I Select 'Yes' radio-button
    And I click the 'Next' button
    Then I should get a result of 'You get free' items and 'You get money off' items
    
     @test2
    Scenario: Scotland user can visit tool and provide circumstances into the tool-Unmarried-selcting 'No' most of the questions
    
    Given I go to url 'https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start'
    And I Click  the 'Start now' button
    Then I should be on the 'Which country do you live in?' page
    When I Select 'Scotland' radio-button 
    And I click the 'Next' button
    Then I should be on the 'Do you live in the Highlands and Islands?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Which country is your dental practice in?' page
    When I Select 'Scotland' radio-button
    And I click the 'Next' button
    Then I should be on the 'What is your date of birth?' page
    When I Enter valid DOB
    And I click the 'Next' button
    Then I should be on the 'Do you live with a partner?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you claim any benefits or tax credits?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Are you pregnant or have you given birth in the last 12 months?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you have an injury or illness caused by serving in the armed forces?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you live permanently in a care home?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you have more than £16,000 in savings, investments or property?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should get results of 'You get free'
    
     @test2
    Scenario: Scotland user can visit tool and provide circumstances into the tool-Not married and diabetes
    
    Given I go to url 'https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start'
    And I Click  the 'Start now' button
    Then I should be on the 'Which country do you live in?' page
    When I Select 'Scotland' radio-button 
    And I click the 'Next' button
    Then I should be on the 'Do you live in the Highlands and Islands?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Which country is your dental practice in?' page
    When I Select 'Wales' radio-button
    And I click the 'Next' button
    Then I should be on the 'What is your date of birth?' page
    When I Enter valid DOB
    And I click the 'Next' button
    Then I should be on the 'Do you live with a partner?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you claim any benefits or tax credits?' page
    When I Select 'Yes' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you get paid Universal Credit?' page
    When I Select 'Not yet' radio-button
    And I click the 'Next' button
    Then I should be on the "While you're waiting on your Universal Credit decision" page
    And I click the 'Next' button
    Then I should be on the 'Do you get any of these benefits?' page
    When I Select "No" radio-button
    And I click the 'Next' button
    Then I should be on the 'Are you pregnant or have you given birth in the last 12 months?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you have an injury or illness caused by serving in the armed forces?' page
    When I Select 'Yes' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you live permanently in a care home?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you have more than £16,000 in savings, investments or property?' page
    When I Select 'Yes' radio-button
    And I click the 'Next' button
    Then I should get results of 'You get free'
    
    
     @test2
    Scenario: Scotland user can visit tool and provide circumstances into the tool-Unmarried and getting Income support
    
    Given I go to url 'https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start'
    And I Click  the 'Start now' button
    Then I should be on the 'Which country do you live in?' page
    When I Select 'Scotland' radio-button 
    And I click the 'Next' button
    Then I should be on the 'Do you live in the Highlands and Islands?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Which country is your dental practice in?' page
    When I Select 'Wales' radio-button
    And I click the 'Next' button
    Then I should be on the 'What is your date of birth?' page
    When I Enter valid DOB
    And I click the 'Next' button
    Then I should be on the 'Do you live with a partner?' page
    When I Select 'No' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you claim any benefits or tax credits?' page
    When I Select 'Yes' radio-button
    And I click the 'Next' button
    Then I should be on the 'Do you get paid Universal Credit?' page
    When I Select 'Not yet' radio-button
    And I click the 'Next' button
    Then I should be on the "While you're waiting on your Universal Credit decision" page
    And I click the 'Next' button
    Then I should be on the 'Do you get any of these benefits?' page
    When I Select 'Income Support' radio-button
    And I click the 'Next' button
    Then I should get a result of 'You get free' items and 'You get money off' items
    And I close the browser
    
    
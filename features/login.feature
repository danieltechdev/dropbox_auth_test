Feature: Login to dropbox with email
As a exsisting user
I want login to account with email
So that I have access to home page

     
  Scenario: Login with all proper entered data
    Given I enter dropbox login page 
      And I enter proper email
      And I enter proper password
     When I click on login button
     Then I access to my home page/dashboard
     
  Scenario: Login without any entered data
    Given I enter dropbox login page 
     When I click on login button
     Then I see notification about unfilled forms
     
 # and more variation with repetition 3^2 - succesful (three states proper,unproper,NULL in 2 items/textboxes)

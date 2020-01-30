Feature: Registration as a new user
As a new user of dropbox
I want register my new account
So that I can log in 

  #succesful login

  Scenario: Register to dropbox with all proper credits and regulations checkbox
    Given I enter dropbox registration page 
      And I enter proper name
	  And I enter proper surname
      And I enter proper email
      And I enter proper password
      And I agree to regulations
     When I Click register button 
     Then I register and login
     
#unsuccesful login 
  Scenario: Register to dropbox without any data
    Given I enter dropbox registration page
     When I Click register button 
     Then I can see all notification about unfilled boxes
     
#unsuccesful login with checked regulation box and all filled informations - 15x cases (2^4-1 successful)

  Scenario: Register to dropbox with all unproper data checked regulations checkbox
    Given I enter dropbox registration page 
      And I enter unproper name
	  And I enter unproper surname
      And I enter unproper email
      And I enter unproper password
      And I don't check to regulations box
     When I Click register button 
     Then I can see all notification about unproper boxes


  Scenario: Register to dropbox with proper name and unproper surname/email/password and checked regulations checkbox
    Given I enter dropbox registration page 
      And I enter proper name
	  And I enter unproper surname
      And I enter unproper email
      And I enter unproper password
      And I don't check to regulations box
     When I Click register button 
     Then I can see all notification about unfilled surname/email/password boxes
     
     
   Scenario: Register to dropbox with proper name/surname and unproper email/password and checked regulations checkbox
    Given I enter dropbox registration page 
      And I enter proper name
	  And I enter proper surname
      And I enter unproper email
      And I enter unproper password
      And I agree to regulations
     When I Click register button 
     Then I can see all notification about unfilled email/password boxes

  Scenario: Register to dropbox with proper name/surname/email and unproper password and checked regulations checkbox
    Given I enter dropbox registration page 
      And I enter proper name
	  And I enter proper surname
      And I enter proper email
      And I enter unproper password
      And I agree to regulations
     When I Click register button 
     Then I can see all notification about unfilled password box
     
     
  Scenario: Register to dropbox with proper name/surname/email/password and checked regulations checkbox
    Given I enter dropbox registration page 
      And I enter proper name
	  And I enter proper surname
      And I enter proper email
      And I enter proper password
      And I agree to regulations
     When I Click register button 
     Then I register and login

  
#and more exaples + 16 unsuccesful registration with uncheck regulations box + TC with unfilled option
#all tests cases 162 - variation with 3^4*2 (3 possible states and 4 items multiply x2 states of check box)

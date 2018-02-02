Feature: Gmail Registration

Background:
Given I navigate to gmailRegistrationPage
#https://accounts.google.com/SignUp?hl=en#

Scenario Outline: 
Given I enter firstname "<first_name>"
And I enter lastname "<last_name>"
And I enter username "<user_name>"
And I enter password "<password>"
And I renter to confirm password "<confirm_password>"
And I enter my birth month "<birth_month>"
And I enter my birth date "<birth_date>"
And I enter my birth year "birth_year>"
And I enter my gender "<gender>"
And I enter my mobilephonenumber "<phone_number>"
And I enter my currentemailaddress "<current_emailaddress>"
And I enter my location "<location>"
And I click on NextStep Button
Then I should be taken to the next page

Examples:
|first_name|last_name|user_name|password|confirm_password|birth_month|birth_date|birth_year|gender|phone_number|current_emailaddress|location|
|"first1"|"last1"|"first1.last1"|"testpwd!*123"|"testpwd!*123"|"January"|01|1990|"Female"|5135001814|test.test123@yahoo.com|"United states"|
|"first2"|"last2"|"first2.last2"|"testpwd!*1234"|"testpwd!*1234"|"January"|02|1990|"Male"|5135121814|test.test1234@yahoo.com|"United states"|
|"first3"|"last3"|"first3.last3"|"testpwd!*1235"|"testpwd!*1235"|"January"|03|1990|"Female"|5135111814|test.test125@yahoo.com|"United states"|
Feature: DrowerFunctional

As a user 
I want to have a quick access to my account settings
In order to conveniently manage my account

Background: 
	Given user is on the Homepage
	And user shifts a panel with Change password button

@regression
Scenario Outline: change users password 

	When user taps Change password button 
	And user inputs his '<Old password>' in field Old password
	And user inputs '<New password>' in field New password
	And user confirms '<New password>' in field Confirm new password
	And user taps a button Change password
	And aser taps Sign out button
	And user inputs his '<Login>' in relevant field 
	And user inputs his '<New Password>' in relevant field 
	And user taps Sign in button
	Then user goes to his personal account 
	Examples: 
	| Old password         | New password         |  Login        |
	| Theelderscrolls5     | Paws123              | odaviing@i.ua |


	@regression
Scenario Outline: change users password (negative)

	When user taps Change password button 
	And user inputs his '<Old password>' in field Old password
	And user inputs '<New password>' in field New password
	And user confirms '<New password>' in field Confirm new password
	And user taps a button Change password
	And aser taps Sign out button
	And user inputs his '<Login>' in relevant field 
	And user inputs his '<New Password>' in relevant field 
	And user taps Sign in button
	Then user goes to his personal account 
	Examples: 
	| Old password         | New password         |  Login        |
	| Theelderscrolls5     |                      | odaviing@i.ua |
	|                      | Paws123              | odaviing@i.ua |
	| theelderscrolls5     | Paws123              | odaviing@i.ua |
	| Theelderscrolls5     | Pawsqwerty           | odaviing@i.ua |
	| Theelderscrolls5     | paws123              | odaviing@i.ua |
    | Theelderscrolls5     | pas12                | odaviing@i.ua |



	 
@regression
Scenario: change app's theme 

	When user taps on switch Change theme
	Then theme changes on bright one


@regression
Scenario: change app's language
	
	When user taps on radiobutton Russian  
	Then language on app changes to Russian 
	

Feature: Authorization
	As an existing user
	I want to be able to log in
	In order to access my account 

@smoke @regression
Scenario Outline: Authorization as a user
	Given user is on the Log in screen
	When user enters '<Email>' in the Email field
	And user enters '<Password>' in the Password field
	And user clicks on the Sign in button
	Then user is on the Tournaments screen
	Examples: 
	| Email         | Password         |
	| odaviing@i.ua | Theelderscrolls5 |

@smoke @regression
Scenario Outline: Authorization as a administrator
	Given admin is on the Log in screen
	When admin enters '<Email>' in the Email field
	And admin enters '<Password>' in the Password field
	And admin clicks on the Sign in button
	Then admin is on the Tournaments screen
	And admin sees the tournament creation button
	Examples: 
	| Email         | Password         |
	|  |  |

@regression
Scenario Outline: Authorization with the invalid data
	Given user is on the Log in screen
	When user enters '<Email>' in the Email field
	And user enters '<Password>' in the Password field
	And user clicks on the Sign in button
	Then user sees message "Invalid password or email"
	Examples: 
	| Email         | Password         |
	| odaviing@i.ua | Theelderscrolls6 |
	| odav11ng@i.ua | Theelderscrolls5 |

@regression
Scenario: Authorization with the empty fields
	Given user is on the Log in screen
	When user clicks on the Sign in button
	Then user sees message "Invalid password or email"

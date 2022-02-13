Feature: Registration
	As a user 
	I want to be able to register 
	In order to access the application

@smoke @regression
Scenario Outline: Registration
	Given user is on the Log in screen
	When user taps on the Sign up button
	Then user is on the Registration screen
	When user enters '<Username>' in the Username field
	And user enters '<Email>' in the Email field
	And user enters '<Password>' in the Password field
	And user enters '<Password>' in the Confirm password field
	And user taps on the Sign Up button
	Then user is on the Log in screen 
	When user enters '<Email>' in the Email field
	And user enters '<Password>' in the Password field
	And user taps on the Sign in button
	Then user is on the Tournaments screen
	Examples: 
	| Username | Email                | Password         |
	| Odaviing | tes5alduin@gmail.com | Theelderscrolls5 |

@regression
Scenario Outline: Registration with invalid username
	
	

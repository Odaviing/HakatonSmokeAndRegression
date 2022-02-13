Feature: Sign up for tournament
	As a user
	I want to sign up for a tournament
	In order to participate in the chosen tournament

Background: 
	Given user is on the Log in screen
	When user enters "odaviing@i.ua" in the Email field
	And user enters "theelderscrolls5" in the Password field
	And user taps on the Sign in button

@smoke @regression
Scenario: User is signing up for the tournament
	Then user is on the Tournaments screen
	When user taps on the sign up for tournament button
	Then user sees a sign up confirmation pop-up
	When user taps on the Yes button
	Then user sees a "You have already signed up" near the tournament name
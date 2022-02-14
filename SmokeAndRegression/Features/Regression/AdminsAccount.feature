Feature: AdminsAccount

As an administrator
I want to manage and collect statistics data
In orser to make business process better

Background: 
	Given user is authorised as administrator
	And administrator taps on game on Homepage


@regression
Scenario: manage Players statistics from admin account
	
	When admin chooses type of statistics Players
	And downloads statistics in txt file
	Then admin achieves a file with information

@regression
Scenario: manage Tournaments statistics from admin account
	
	When admin chooses type of statistics Tournaments
	And downloads statistics in csv file
	Then admin achieves a file with information


@regression
Scenario: admin manages the setting of current game

	When admin selects current game
	And admin sets a score of a game
	And taps a Submit button
	Then score is changed succesffully



Feature: UserWatchesTablesWithMatches

As a user 
I want to see information about matches 
In order to know the details of the tournament 

Background: 
	Given user is on the Homepage

@regression
Scenario Outline: user watches results of a Cup game
	When user taps on Cup tournament 
	And chooses '<Stage>'
	And taps on Tables button
	Then user watches cup match result
	Then 
	Examples: 
	|  Stage      |
	| 1 Stage     | 
	| 2 Stage     |
	| 3 Stage     |
	| 4 Stag      |
	| 5 Stage     |
	| 6 Stage     |
	| 7 Stage     |


@regression
Scenario: user watches results of a Championship game
	
	When user taps on Championship tournament 
	And taps on Tables button
	Then user watches Championship table statistics
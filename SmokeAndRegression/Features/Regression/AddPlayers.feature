Feature: AddPlayers

A short summary of the feature
Background: 
	Given user is on the Homepage

@regression
Scenario: add players to Cup by user
	
	When user taps on Participate button in opened Cup event 
	And user taps button Yes 
	And user assures that current number of players is more than '10'
	And user invites '10' participants 
	And user sends the invitation
	Then new '10' partcipants will be added to Cup event 



@regression
Scenario: add players to Championship by user
	
	When user taps on Participate button in opened Championship event
	And user taps button Yes
	And user assures that current number of players is more than '1'
	And user invites '1' participant
	And user sends the invitation
	Then new '1' partcipant will be added to Championship event 


@regression
Scenario: add players to Cup by user (negative)
	
	When user taps on Participate button in opened Cup event 
	And user taps button Yes 
	And user assures that current number of players is less than '10'
	And user invites '10' participants 
	And user sends the invitation
	Then new partcipants won't be added to Cup event  


@regression
Scenario: add players to Championship by user (negative)
	
	When user taps on Participate button in opened Championship event
	And user taps button Yes
	And user assures that current number of players is less than '2'
	And user invites '1' participant
	And user sends the invitation
	Then new partcipants won't be added to Championship event  







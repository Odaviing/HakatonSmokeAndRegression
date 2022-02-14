Feature: PagesOnHomepage

As a user
I want to have a list of tournaments on the main page
In order to not spend time for searching site content


Background: 
	Given user is on the Homepage



@regression
Scenario Outline: check filters for Cup tournaments
	When user taps on Filters button
	And user taps on Cup tournament 
	And inputs '01.02.2022' as a date
	And taps Scenario button
	And selects '<Scenario>' as Scenario
	And taps Level button
	And selects '<Level>' as Scenario
	And taps Players button
	And selects '<Players>' as Scenario
	Then user watches changes in table of tournaments
	Examples: 
	| Scenario         | Level        |  Players    |
	| one-match        |  Advanced	  |    64	    |
	| to three wins    |  Beginner	  |    32       |
	| one-match        |  Middle	  |    32	    |
	| two-match        |  Beginner	  |    16       |
	| to three wins    |  Middle	  |    16       |
	| to three wins    |  Middle      |    64       |
	| two-match        |  Advanced	  |    8        |
	| two-match        |  Middle      |    4        |
	| one-match        |  Beginner    |    8        |
	| two-match        |  Beginner    |    64       |
	| to three wins    |  Middle      |    8        |
	| one-match        |  Advanced	  |    16       |
	| to three wins    |  Advanced    |    128	    |
	| one-match        |  Advanced    |    4        |
	| two-match        |  Advanced    |    32       |
    | to three wins    |  Beginner    |    4	    |
	| one-match        |  Beginner    |    128      |
	| two-match        |  Middle      |    128      |


@regression
Scenario Outline: check filters for Championship tournaments
	When user taps on Filters button
	And user taps on Championship tournament 
	And inputs '01.02.2022' as a date
	And taps Scenario button
	And selects 'One match confrontation' as Scenario
	And taps Level button
	And selects '<Level>' as Scenario
	And taps Players button
	And selects '<Players>' as Scenario
	Then user watches changes in table of tournaments
	Examples: 
   | Level        |  Players    |
   |  Beginner	  |    10	    |
   |  Beginner	  |    3        |
   |  Advanced	  |    6	    |
   |  Advanced	  |    9        |
   |  Middle	  |    10       |
   |  Middle      |    5        |
   |  Middle	  |    8        |
   |  Advanced    |    7        |
   |  Middle      |    7        | 
   |  Beginner    |    6        |
   |  Middle      |    4        |
   |  Beginner	  |    9        |
   |  Advanced    |    8        |
   |  Advanced    |    10       |
   |  Middle      |    9        |
   |  Advanced    |    5	    |
   |  Middle      |    6        |
   |  Advanced    |    3        |
   |  Beginner    |    5        |
   |  Beginner    |    4        |
   |  Middle      |    3	    |
   |  Beginner    |    7        |
   |  Advanced    |    4        |
   |  Beginner    |    8        |


@regression
Scenario: check pagination for tournament tables

	When user taps on right arrow button
	Then user goes to the second page of the tournament tables list
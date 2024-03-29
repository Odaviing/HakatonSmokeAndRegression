﻿Feature: Creation of a tournament
	As an administrator 
	I want to be able to create tournaments 
	In order to attract new users

Background: 
	Given admin is on the Log in screen
	When admin enters 'felix@i.ua' in the Email field
	And admin enters 'passw0rd' in the Password field
	And admin taps on the Sign in button
	Then admin is on the Tournaments screen
	When admin taps on the Create tournament button

@smoke
Scenario: Create a championship tournament
	Then admin is on the tournament creation screen
	When admin enters "Championship" in the Name field
	And admin enters "This is a championship tournament" in the Description textbox
	And admin enters "Sat Feb 26 12 00 PM" in the Select start date pop-up
	And admin enters "Fri Feb 25 12 00 PM" in the Select last registration date pop-up
	And admin chooses a "Middle" in the Level drop-down
	And admin taps on the Championship radiobutton
	And admin chooses a "10" players option from Participants drop-down
	And admin taps on the Apply button
	Then admin is on the Tournaments screen
	And admin sees a tournament with the name "Championship" in the list

@smoke
Scenario: Create a cup tournament
	Then admin is on the tournament creation screen
	When admin enters "Cup" in the Name field
	And admin enters "This is a cup tournament" in the Description textbox
	And admin enters "Sat Feb 26 12 00 PM" in the Select start date pop-up
	And admin enters "Fri Feb 25 12 00 PM" in the Select last registration date pop-up
	And admin chooses a "Middle" in the Level drop-down
	And admin taps on the Cup radiobutton
	And admin chooses a 32 players option from Participants drop-down
	And admin chooses a one-match confrontation from the Scenario drop-down
	And admin taps on the Apply button
	Then admin is on the Tournaments screen
	And admin sees a tournament with the name "Cup" in the list

@regression
Scenario Outline: Create a Championship Tournament
Then admin is on the tournament creation screen
	When admin enters '<Name>' in the Name field
	And admin enters '<Description>' in the Description textbox
	And admin enters '<Start date>' in the Select start date pop-up
	And admin enters '<Last Registration>' in the Select last registration date pop-up
	And admin chooses a '<Level>' in the Level drop-down
	And admin taps on the Championship radiobutton
	And admin chooses a '<Participants>' players option from Participants drop-down
	And admin taps on the Apply button
	Then admin is on the Tournaments screen
	And admin sees a tournament with the name "Championship" in the list
Examples: 
| Name            | Description                          | Level        | Participants  | Start Date          | Last registration   |
| Championship 3  | This is a championship tournament 3  | Beginner     | 3             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 3  | This is a championship tournament 3  | Middle       | 3             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 3  | This is a championship tournament 3  | Advanced     | 3             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 4  | This is a championship tournament 4  | Beginner     | 4             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 4  | This is a championship tournament 4  | Middle       | 4             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 4  | This is a championship tournament 4  | Advanced     | 4             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 5  | This is a championship tournament 5  | Beginner     | 5             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 5  | This is a championship tournament 5  | Middle       | 5             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 5  | This is a championship tournament 5  | Advanced     | 5             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 6  | This is a championship tournament 6  | Beginner     | 6             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 6  | This is a championship tournament 6  | Middle       | 6             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 6  | This is a championship tournament 6  | Advanced     | 6             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 7  | This is a championship tournament 7  | Beginner     | 7             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 7  | This is a championship tournament 7  | Middle       | 7             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 7  | This is a championship tournament 7  | Advanced     | 7             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 8  | This is a championship tournament 8  | Beginner     | 8             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 8  | This is a championship tournament 8  | Middle       | 8             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 8  | This is a championship tournament 8  | Advanced     | 8             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 9  | This is a championship tournament 9  | Beginner     | 9             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 9  | This is a championship tournament 9  | Middle       | 9             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 9  | This is a championship tournament 9  | Advanced     | 9             |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 10 | This is a championship tournament 10 | Beginner     | 10            |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 10 | This is a championship tournament 10 | Middle       | 10            |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Championship 10 | This is a championship tournament 10 | Advanced     | 10            |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |


@regression
Scenario Outline: Create a Cup Tournament
Then admin is on the tournament creation screen
	When admin enters '<Name>' in the Name field
	And admin enters '<Desription>' in the Description textbox
	And admin chooses a '<Level>' in the Level drop-down
	And admin enters '<Last Registration>' in the Select last registration date pop-up
	And admin chooses a '<Level>' in the Level drop-down
	And admin taps on the Championship radiobutton
	And admin chooses a '<Participants>' players option from Participants drop-down
	And admin chooses a '<Scenario>' from the Scenario drop-down
	And admin tapsfuck  on the Apply button
	Then admin is on the Tournaments screen
	And admin sees a tournament with the name "Championship" in the list
Examples: 
| Name    | Description                  | Level    | Participants   | Scenario    | Start Date          | Last Registration   |
| Cup 4   | This is a cup tournament 4   | Beginner | 4              | Two-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 4   | This is a cup tournament 4   | Middle   | 4              | One-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 4   | This is a cup tournament 4   | Middle   | 4              | Three-match |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 4   | This is a cup tournament 4   | Beginner | 4              | Two-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 8   | This is a cup tournament 8   | Beginner | 8              | Three-match |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 8   | This is a cup tournament 8   | Middle   | 8              | One-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 8   | This is a cup tournament 8   | Advanced | 8              | Two-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 16  | This is a cup tournament 16  | Beginner | 16             | One-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 16  | This is a cup tournament 16  | Middle   | 16             | Two-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 16  | This is a cup tournament 16  | Advanced | 16             | Three-match |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 32  | This is a cup tournament 32  | Beginner | 32             | Three-match |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 32  | This is a cup tournament 32  | Middle   | 32             | One-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 32  | This is a cup tournament 32  | Advanced | 32             | Two-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 64  | This is a cup tournament 64  | Beginner | 64             | Two-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 64  | This is a cup tournament 64  | Middle   | 64             | Three-match |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 64  | This is a cup tournament 64  | Middle   | 64             | Two-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 64  | This is a cup tournament 64  | Advanced | 64             | One-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 128 | This is a cup tournament 128 | Beginner | 128            | One-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 128 | This is a cup tournament 128 | Middle   | 128            | Two-match   |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |
| Cup 128 | This is a cup tournament 128 | Advanced | 128            | Three-match |Sat Feb 26 12 00 PM  | Fri Feb 25 12 00 PM |



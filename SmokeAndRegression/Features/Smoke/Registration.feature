Feature: Registration
	As a user 
	I want to be able to register 
	In order to access the application

@smoke
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
	| Testname | testmail@gmail.com   | Testtest123      |

@regression
Scenario Outline: Registration with valid data
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
	| Username | Email          | Password |
	| Ab       | test@i.ua      | Qwert1   |
	| Abc      | test@gmail.com | Qwert1!  |

@regression
Scenario Outline: Registration with invalid Name
	Given user is on the Log in screen
	When user taps on the Sign up button
	Then user is on the Registration screen
	When user enters '<Username>' in the Username field
	And user enters '<Email>' in the Email field
	And user enters '<Password>' in the Password field
	And user enters '<Password>' in the Confirm password field
	Then user sees message "Invalid password or email"
	And Sign up button becomes unavailable
	Examples: 
	| Username | Email          | Password |
	| A        | test@i.ua      | Qwert1   |
	| ab       | test@gmail.com | Qwert1!  |

@regression
Scenario Outline: Registration with invalid Email
	Given user is on the Log in screen
	When user taps on the Sign up button
	Then user is on the Registration screen
	When user enters '<Username>' in the Username field
	And user enters '<Email>' in the Email field
	And user enters '<Password>' in the Password field
	And user enters '<Password>' in the Confirm password field
	Then user sees message "Invalid password or email"
	And Sign up button becomes unavailable
	Examples: 
	| Username | Email     | Password |
	| Ab       | Test@i.ua | Qwert1   |
	| Abc      | test.ua   | Qwert1!  |
	| Abcd     | test@i.u  | Qwerty1! |

@regression
Scenario Outline: Registration with invalid Password
	Given user is on the Log in screen
	When user taps on the Sign up button
	Then user is on the Registration screen
	When user enters '<Username>' in the Username field
	And user enters '<Email>' in the Email field
	And user enters '<Password>' in the Password field
	And user enters '<Password>' in the Confirm password field
	Then user sees message "Invalid password or email"
	And Sign up button becomes unavailable
	Examples: 
	| Username | Email     | Password |
	| Ab       | Test@i.ua | Qwer1    |
	| Abc      | test.ua   | qwerty1  |
	| Abcd     | test@i.u  | Qwertyu  |

@regression
Scenario Outline: Registration with mismatch of the passwords
	Given user is on the Log in screen
	When user taps on the Sign up button
	Then user is on the Registration screen
	When user enters '<Username>' in the Username field
	And user enters '<Email>' in the Email field
	And user enters '<Password>' in the Password field
	And user enters '<Confirm Password>' in the Confirm password field
	Then user sees message "Invalid password or email"
	And Sign up button becomes unavailable
	Examples: 
	| Username   | Email     | Password | Confirm Password |
	| Abcd       | Test@i.ua | Qwerty1  | Qwerty2          |

@regression
Scenario Outline: Registration with data of the existing user
	Given user is on the Log in screen
	When user taps on the Sign up button
	Then user is on the Registration screen
	When user enters '<Username>' in the Username field
	And user enters '<Email>' in the Email field
	And user enters '<Password>' in the Password field
	And user enters '<Password>' in the Confirm password field
	And user taps on the Sign up button
	Then user sees the message "User with this name already exists"
	Examples: 
	| Username | Email         | Password         |
	| Odaviing | odaviing@i.ua | Theelderscrolls5 |
	
	
	

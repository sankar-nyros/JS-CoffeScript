CoffeeScript
===============================

Form validations using CoffeeScript
_______________________________________

HTML components in form are:

Account Information  <Legend>

Username*	<Text Box> [Length - Min: 5 chars: Max: 8 chars; Type: Alphanumeric]

Password*	<Text Box> [Decoded; Length - Max: 6 chars; Type: Alphanumeric]



Profile Information	<Legend>

First Name* 	<Text Box> [Length - Min: 2 chars: Max: 6 chars] 

Last Name*	<Text Box> [Length - Min: 2 chars: Max: 15 chars] 

Profile Pic*	<File Upload> [Type: jpg/gif/png]

Gender*	<Radio Buttons> [Male/Female; Default: Male]

Date of Birth*	<Select Boxes> [Day/Month/Year]

Hobbies*	<Radio Buttons> [Painting/Singing/Traveling/Dancing/Gardening/Others]

Have been to*	<Multiple Select box> [Countries List]



Contact Information	<Legend>

Phone * 	<Text Box> [Format: + 91 (990)-824-7888] 
					[Submit button]


A progress bar with percentage should also be shown on top basing on the number of HTML form elements successfully filled:


After successful validation, a Congratulations message should be showed on top of form.



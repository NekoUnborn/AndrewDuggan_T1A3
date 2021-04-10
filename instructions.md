# Table of contents.
1. Links
2. Statement of purpose and scope
3. Features
4. Instructions

# Links.
[Link to GITHUB Repository](https://github.com/NekoUnborn/AndrewDuggan_T1A3)

[Link to Trello Board](https://trello.com/b/mzhSDfv9)

Statement of purpose and scope

# Purpose

Background

Respite accommodation provides care to participants to allow carers (users) to have a break from care. As a provider it is necessary to identify and understand the risks participants bring to the respite environment.
A comprehensive risk assessment becomes a vital piece of information to determine whether a respite service can safely deliver care
The Risk Assessment of a participant is a process that occurs during the initial discussion when applying for a position at a respite provider.
Respite work environments and staffing profiles vary across services, therefore some respite houses can only accept participants with a certain type and level of risk.

Aim

The aim of this application is to streamline the Risk Assessment process and provide the user with the answer whether the respite house has the skills and capacity to provide support to the participant prior to the interview.

The problems being solved

Filling out paperwork is time consuming and there are usually time constraints during the interview.
This application will allow potential clients to securely provide the information before and retain a copy of the assessment for further discussion during the interview (if required).
Families that accommodate disabilities become consumed by caring for their needs, this means that they accept these care needs as a normal part of their life; Because of this acceptance, critical information about care requirements can be overlooked when applying for respite.
This application will simplify the questions into a form that cannot easily be replicated on paper without taking many pages and prompt the user to provide specific information to determine care needs.

Target audience and usage

The target audience is potential clients (user) that have a basic understanding in the use of the command line and preferably have ruby installed.
The potential client will use the installation instructions in this README along with an executable install file to install the program.


# Features

A login/logout system that saves the logging details in an external file
This feature will contain a menu that steps through with input from the user
1. Login
2. Signup
3. Quit

Login

The user will be asked for and input their username and password
The login option will check the external file to match a listed user, if the username and password match, the app will move on to the next part of the app.

Signup

The user will be asked for and input their username and password.
The username will be checked against the database and if the username is not in use, the details will be added to the user database.
The user will login using the instructions that appear at each step (to ensure that the user knows what to do), the options will be in the form of a menu and will clear the screen and loop back to the menu until:
The user has logged in with a username and password
The user has signed up successfully with a unique username and password (once signed up, the application will automatically log them in)
The user selects quit
Any errors will display in an easy-to-understand format for three seconds, then loop back to the menu.

An overall menu system

After the user is logged in, there will be a menu system for the various features, with the instructions in the menu:
1. Start risk assessment questionnaire
2. Edit questions
3. Submit
4. Exit without submitting
Any errors will display in an easy-to-understand format for three seconds, then loop back to the menu.

A questionnaire that will save the risks associated with a participant for care in a separate file

The user will answer a series of questions that will diverge depending on the answers to the previous questions.
The answers are mostly a y/n menu with expanding questions for more detail if necessary and an extra information input at the end of every behaviour line of questioning
The explanation of the needed answer format will be with the question in square brackets.
Any errors will display in an easy-to-understand format for three seconds, then loop back to the question.

The ability to display previous care area questions and answer them if there are any changes

When the user chooses this option, the list of care areas will be displayed as a menu and they can choose the care area they wish to change.
The app will then re-ask the questions and the user will have another chance to answer them.
The instructions will be displayed before the menu option.
Any errors will display in an easy-to-understand format for three seconds, then loop back to the care area menu.
 
Displaying the result to the user and if the provider has a position for the participant.

When the user selects 'Submit', the overall risk will be calculated behind the scenes and will be associated with a list of values when the user submits. The instructions will be with the menu and there will be a confirmation question before this feature is implemented.
If the score of any care area is higher than the provider is scoped for, the user will receive "Please contact us to see if we fit with your participant’s needs"
If there are no high scores, the user will receive "Please contact us to book an entry interview"
Any errors will display in an easy-to-understand format for three seconds, then loop back to the menu.

Automatically email the completed form to the company email address when the user has confirmed 'Submit'

The user will interact with this feature when they select 'submit'.
The user will be warned about the feature before confirming the submission.
This feature will send an email (containing the users file) to the respite house email address.

Any errors from this process will prompt the user to take a copy of the save file to the interview.

# Installation

- If you do not have ruby installed, follow the instructions at
(https://www.ruby-lang.org/en/documentation/installation/).
- Clone the application from GitHub using the command:
```
git clone git@github.com:NekoUnborn/AndrewDuggan_T1A3.git
```
- Run the install file using the following command:
```
./install.sh
```
- Run the application by the command:
```
./run_app.sh
```

# Dependencies
The following Ruby Gems are required and will be installed by the install file:
- gem "colorize", "~> 0.8.1"
- gem "tty-prompt", "~> 0.23.0" - This Gem may have problems on a Windows system
- gem "mailgun-ruby", "~> 1.2"
- gem "dotenv", "~> 2.7"
- gem "csv", "~> 3.1"
- gem "tty-markdown", "~> 0.7.0"

# Attribution
I would like to thank the people that made the gems listed above.

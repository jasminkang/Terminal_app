# Jasmin Kang Terminal Application

## GitHub Repo

<https://github.com/jasminkang/Terminal_app>

## Description of game and features

Guess who? Animals is a ruby application educational game about often misunderstood animals. It has 3 modes to either learn, trivia, or quiz and has been developed for assessment at coder academy.

FEATURE 1:Learn about me (facts)
Displays the list of (20) animals stored in the game. User picks an animal, and then a ‘about me’ pops up for the chosen animal. User can then exit back to the main menu (with links to the 3 features) or Learn about another animal.

FEATURE 2:Guess who trivia
Displays an ‘about me’ profile for an animal, the user has 3 guesses to guess which animal it is. If they guess the right animal in 3 guesses, they are prompted to move onto another trivia question or exit to the main menu. If they don’t guess the animal within 3 guesses, the user is prompted to move onto another trivia question or exit back to the main menu.

FEATURE 3:20 questions quiz
Who am I? Displays an ‘about me’ profile for an animal with multiple choice answers to animal it is about. User selects an answer and then next question appears. All animal ‘about me’ profiles are iterated through and then the user can see their score out of 20. The only feedback the user has is their final score.

## Planning and implementation

Implementation plan was developed using Trello <https://trello.com/b/h8TTQlez/app-dev-plan>.

![plot](docs/Screen%20Shot%202022-04-25.png)
![plot](docs/Screen%20Shot%202022-04-30.png)
![plot](docs/Screen%20Shot%202022-05-01.png)

Perhaps more effective for me personally, is when planning was done at various stages on my study wall in greater detail [plot](docs/sticky_notes.jpg)

Intial skeleton planning for each feature in this flowchart:
![plot](docs/Blueprint%20app.png). Each shape represents one element of the checklist to be completed for each aspect (plus with well as interacting with the external JSON file being a baseline requirement for all features)

## Overall structure and control flow

Bash script to open main menu or help guide
All games / feature accessible via the main menu (where user can also access help guide, or exit the program).
Each feature has an option to go back to the menu in between questions.

## Installation and how to use

STEP 1
\*Install ruby. Recommend using rbenv or similar to manage versions.
\*\* for mac: <https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-macos>

\*\* for windows: <https://phoenixnap.com/kb/install-ruby-ubuntu>

\*\* for linux: <https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/nginx/oss/install_language_runtime.html>

STEP 2
\*Clone the repository. Guide here.

STEP 3
\*Open the terminal and navigate to the directory where the game was cloned. Navigate into the ‘/src’ folder in the relevant directory.

STEP 5
\*From inside the /src folder copy the relevant line below into your terminal:

**To start playing: bash start_game.sh
**To learn how to play: bash start_game_help.sh

## Dependencies and system requirements

This was developed using ruby Ruby version 2.7.5 on macOS Monterey v 12.2.1. There may be issues using alternate operating systems.

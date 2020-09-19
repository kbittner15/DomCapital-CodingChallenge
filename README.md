# README

Step 1 : install ruby on rails:

•	Begin by opening the terminal 
•	Install homebrew with this command : 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)”
•	Install rvm and ruby with this command: 
\curl -sSL https://get.rvm.io | bash -s stable --ruby
•	Install rails with this command:
Gem install rails
Note can check rails version with the command: rails -v



Step 2 : the project: 

•	Download the project as a zip from git hub or clone the project to a folder on your computer with the fallowing commands:
Cd (enter folder path you want to user here)
•	Copy the project’s GitHub link and enter this command:
Git clone (paste git hub link here)
•	Cd to the project path and run the fallowing commands 
Bundle install
Yarn install
Rake db:seed
Rake db:migrate
•	Now the application should run successfully start the application by enter the fallowing command :
Rails server

•	Open a web-browser and go the page localhost:3000
This is the blog 
•	To Add a new post, delete a post or comment you must pass authentication, to do this click on new post and you will be prompted for a username and password the credentials are the fallowing:

Username: name
Password: password

Unit Tests:
•	unit test can be found for posts and comments in the test/models folder

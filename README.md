# README
Git Repo: 
https://github.com/asadasadabbas/contact-app.git

Setup Postgres Server:
1. Download according to OS : https://www.postgresql.org/download/
2. Install it.
3. Assign username as 'postgres' and password whatever you prefer. Make sure to save the credentials, will be needing it in further process.

Setup project into a directory:
1. Clone the project from the url
2. Edit database.yml file with the username and password for the Postgres that was setup while installing Postgres
3. Save database.yml file
4. Terminal :
	cd <project_dir_name>
5. Terminal :
	rake db:setup
6. Terminal :
	bundle install
7. Terminal:
	rails s
8. Now the server would start locally. Navigate to the localhost link given in the terminal after running the last command.






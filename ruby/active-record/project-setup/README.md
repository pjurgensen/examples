#Set up a project to use Active Record

* Install Active Record: $ gem install activerecord

* Install Rake: $ gem install rake

* Create a 'db' folder in the project directory

* Create a file called 'Rakefile' in the project directory (see example)

* Create a file called 'config.yml' in the 'db' folder (see example)

* Create the databases: $ rake db:create

* Create table with a new migration: $ rake db:new_migration name=create_table_name

* Update new migration files to include columns (see example)

* Run the migration: $ rake db:migrate

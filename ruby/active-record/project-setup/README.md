#Set up a project to use Active Record

* Install Active Record: $ gem install activerecord

* Install Rake: $ gem install rake

* Create a 'db' folder in the project directory

* Create a file called 'Rakefile' in the project directory (see Rakefile)

* Create a file called 'config.yml' in the 'db' folder (see config.yml)

* Create the databases: $ rake db:create

* Create table with a new migration: $ rake db:new_migration name=create_table_name

* Update new migration files to include columns (see 20121229088721_create_tasks.rb)

* Run the migration: $ rake db:migrate

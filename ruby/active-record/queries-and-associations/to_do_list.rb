require 'activerecord'

# Connect to the database with Active Record:
database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations['development']
ActiveRecord::Base.establish_connection(development_configuration)

# or simply:
ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["development"])


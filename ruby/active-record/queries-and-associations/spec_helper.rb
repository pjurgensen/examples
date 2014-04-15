require 'activerecord'
require 'rspec'

# Connect to the database with Active Record:
database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations['test']
ActiveRecord::Base.establish_connection(development_configuration)

# or simply:
ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["test"])

# Clear your test database between specs
RSpec.configure do |config|
  config.after(:each) do
    Task.all.each { |task| task.destroy }
  end
end

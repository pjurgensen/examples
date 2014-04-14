require 'rspec'
require 'pg'
require 'list'
require 'task'
# require all necessary gems

DB = PG.connect({:dbname => 'to_do_test'})
# use DB constant for database connection

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM lists *;")
    DB.exec("DELETE FROM tasks *;")
  end
end
# this clears the database between specs
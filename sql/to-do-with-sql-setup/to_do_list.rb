require 'pg'
require './lib/task'

DB = PG.connect({:dbname => 'to_do'})
# use DB constant for database connection

def welcome
  puts "Welcome to the To Do list!"
  menu
end
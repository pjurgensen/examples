# Create a database-backed class with Active Record
class Task < ActiveRecord::Base
	# Create a one-to-many association between your models (on the "many" side)
	belongs_to(:list)

	# add a scope
	def self.not_done
  	where({:done => false})
	end

end

# so you can run:

# list = List.new({:name => 'Epicodus stuff'})

# task = list.tasks.new({:name => 'learn Active Record'})

# list.save

# task.list (returns list)



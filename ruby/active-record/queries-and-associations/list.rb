# Create a one-to-many association between your models (on the "one" side)

class List < ActiveRecord::Base
  has_many(:tasks)
end

# so you can run:

# list = List.new({:name => 'Epicodus stuff'})

# list.tasks.new({:name => 'learn Active Record'})

# list.tasks.new({:name => 'pair with somebody new'})

# list.save (saves list and associated tasks)

# list.tasks (returns collection of associated tasks)

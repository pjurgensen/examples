require 'pg'

class Task
  attr_reader :name # replaces def name

  def initialize(name)
    @name = name
  end

  # def name
  #   @name
  # end

  def self.all # same as Task.all
    results = DB.exec("SELECT * FROM tasks;")
    tasks = []
    results.each do |result|
      name = result['name']
      tasks << Task.new(name)
    end
    tasks
  end

  def save
    DB.exec("INSERT INTO tasks (name) VALUES ('#{@name}');")
  end

  def ==(another_task) # treat two tasks with the same properties as equivalent.
    self.name == another_task.name
  end
end
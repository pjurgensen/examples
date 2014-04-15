#Active Record Validations and Callbacks

* Active Record's save method returns true if it the model's attributes are valid and it can successfully save it to the database; otherwise it returns false.

	if task.save
	  puts "'#{task_name}' has been added to your To Do list."
	else
	  puts "That wasn't a valid task."
	end

* Test for validations (see task_spec.rb)

* Implement validations (see task.rb)

* Write a callback (see task.rb)

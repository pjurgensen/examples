#Using SQL with Ruby

* Connect to a database:
	some_db = PG.connect({:dbname => 'some_db'})

* Run SQL:
	some_db.exec("INSERT INTO contacts (name) VALUES ('patti');")

* The results are a collection of hashes:
	results = address_book_db.exec("SELECT * FROM contacts;")
	results.each { |result| p result }
	results.each { |result| p result.class } -- each result is a hash

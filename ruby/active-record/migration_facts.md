#Facts about Migrations

* A migration is a Ruby file that changes your database.

* It can create, update and drop tables and columns.

* Migrations are stored in the db/migrate folder.

* The current database schema is stored in db/schema.rb.

* You should not edit schema.rb directly; it is automatically updated when you run (or rollback) a migration.

* Each migration filename starts with a timestamp of when it was created.

* You can tell which migrations have or haven't been run by comparing the version in schema.rb with the timestamps on the migrations.

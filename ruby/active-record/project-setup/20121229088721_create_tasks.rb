class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :name, :string
      t.column :done, :boolean

      t.timestamps
    end
  end
end
# Add a table called tasks

add_column :tasks, :due_date, :datetime
# Add a column called due_date with a datetime datatype to an existing table called tasks

remove_column :tasks, :due_date
# Remove a column called due_date (including the datetime datatype is optional) from an existing table called tasks


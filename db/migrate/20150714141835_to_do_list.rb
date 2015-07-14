class ToDoList < ActiveRecord::Migration
  def change
  	create_table :tasks do |t|
      t.string :title, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end

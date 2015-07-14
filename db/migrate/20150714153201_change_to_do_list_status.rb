class ChangeToDoListStatus < ActiveRecord::Migration
  def change
  	change_column :tasks, :status, :boolean, null: false, default: false
  	rename_column :tasks, :status, :completed
  end
end

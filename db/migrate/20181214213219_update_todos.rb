class UpdateTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :done, :integer
    rename_column :todos, :title, :description 
  end
end

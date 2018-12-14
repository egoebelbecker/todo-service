class RemoveCreatedBy < ActiveRecord::Migration[5.2]
  def change
    remove_column :todos, :createdby
  end
end

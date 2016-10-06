class AddTodoIdToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :todo_id, :integer
  end
end

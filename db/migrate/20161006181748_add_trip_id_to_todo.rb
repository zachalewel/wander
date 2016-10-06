class AddTripIdToTodo < ActiveRecord::Migration
  def change
    add_column :todos, :trip_id, :integer
  end
end

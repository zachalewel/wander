class CreateJoinTableTripUser < ActiveRecord::Migration
  def change
    create_join_table :trips, :users do |t|
      t.index :trip_id
      t.index :user_id
      t.column :trip_id
      t.column :user_id
    end
  end
end

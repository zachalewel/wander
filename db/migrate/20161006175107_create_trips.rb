class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.text :description
      t.float :latitude
      t.float :longitude
      t.date :start_date
      t.date :end_date
      t.text :trip_notes

      t.timestamps null: false
    end
  end
end

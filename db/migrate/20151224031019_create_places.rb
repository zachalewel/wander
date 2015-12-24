class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :activity
      t.float :latitude
      t.float :longitude
      t.string :state
      t.string :geocoded_name
      t.text :description
      t.text :directions
      t.text :comments
      t.text :picture

      t.timestamps null: false
    end
  end
end

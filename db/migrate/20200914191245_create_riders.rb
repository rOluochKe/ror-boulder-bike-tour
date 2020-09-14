class CreateRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :riders do |t|
      t.string :first_name
      t.string :last_name
      t.string :city_of_origin
      t.string :state_of_origin
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end

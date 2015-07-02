class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :attraction_name
      t.string :type
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :subtype

      t.timestamps null: false
    end
  end
end

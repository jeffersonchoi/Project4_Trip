class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.time :event_start
      t.time :event_end
      t.belongs_to :itinerary, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

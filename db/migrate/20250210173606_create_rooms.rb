class CreateRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :rooms do |t|
      t.decimal :price_per_night
      t.integer :capacity
      t.references :hotel, null: false, foreign_key: true
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end

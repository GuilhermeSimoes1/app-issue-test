class CreateRooms < ActiveRecord::Migration[8.1]
  def change
    create_table :rooms do |t|
      t.integer :building_id
      t.string :name
      t.string :code
      t.integer :floor

      t.timestamps
    end
  end
end

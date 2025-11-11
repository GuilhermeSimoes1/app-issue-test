class CreateIssues < ActiveRecord::Migration[8.1]
  def change
    create_table :issues do |t|
      t.string   :title
      t.text     :description
      t.integer  :status
      t.integer  :visibility
      t.integer  :category_id
      t.float    :latitude
      t.float    :longitude
      t.integer  :building_id
      t.integer  :room_id
      t.integer  :reporter_id
      t.integer  :assignee_id
      t.integer  :duplicate_of_id
      t.datetime :closed_at

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.integer :issue_id
      t.integer :user_id
      t.string :action
      t.jsonb :from_state
      t.jsonb :to_state
      t.jsonb :metadata

      t.timestamps
    end
  end
end

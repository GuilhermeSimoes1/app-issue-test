class CreateComments < ActiveRecord::Migration[8.1]
  def change
    create_table :comments do |t|
      t.integer :issue_id
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end

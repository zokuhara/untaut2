class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body
      t.integer :room_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

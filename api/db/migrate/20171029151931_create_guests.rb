class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :user_id
      t.integer :event_id
      t.boolean :attending

      t.timestamps null: false
    end
  end
end

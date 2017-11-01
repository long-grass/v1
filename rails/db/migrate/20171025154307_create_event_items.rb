class CreateEventItems < ActiveRecord::Migration[5.1]
  def change
    create_table :event_items do |t|
      t.integer :event_id
      t.integer :item_id
      t.integer :assigned_person_id

      t.timestamps
    end
  end
end

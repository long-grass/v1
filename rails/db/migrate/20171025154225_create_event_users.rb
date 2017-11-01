class CreateEventUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :event_users do |t|
      t.integer :invited_event_id
      t.integer :guest_id
      t.string :status

      t.timestamps
    end
  end
end

class CreateEventComments < ActiveRecord::Migration
  def change
    create_table :event_comments do |t|
      t.string :timestamp
      t.string :message

      t.timestamps null: false
    end
  end
end
